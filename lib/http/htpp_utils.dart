import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:flutterstart/http/code.dart';
import 'package:flutterstart/utils/shared_preUtils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'logsInterceptors.dart';
import 'result_data.dart';

class HttpUtils{
  static const CODE_SUCCESS = 200;
  static const CODE_TIME_OUT = -1;
  Dio _dio =  Dio();
 static HttpUtils _instance;
  static getInstance(){
    if (_instance==null) {
      _instance = HttpUtils();
    } 
    return _instance;
  }
  HttpUtils(){
     _dio.options.headers = {
        "version":'1.0.0',
        "Authorization":'',
    };
    _dio.options.baseUrl = "https://master.xianzhayugan.com/";
    _dio.options.connectTimeout = 50000; 
    _dio.options.receiveTimeout = 3000;
    _dio.interceptors.add(LogsInterceptors());
  }
  httpGet(url, params, {noTip = false}) async{
    Response response;
    try {
      response = await _dio.get(url, queryParameters: params);
      print('获取到数据为：'+response.data.toString());
    } on DioError catch (e) {
      return resultError(e);
    }

    if (response.data is DioError) {
      return resultError(response.data['code']);
    }

    return response.data;
  }
  httpGetNoParams(url,  {noTip = false}) async{
    Response response;
    try {
      response = await _dio.get(url);
    } on DioError catch (e) {
      return resultError(e);
    }

    if (response.data is DioError) {
      return resultError(response.data['code']);
    }

    return response.data;
  }
  httpPost(url, params, {noTip = false})async{
    Response response;

    try {
      response = await _dio.post(url, data: params);
    } on DioError catch (e) {
      return resultError(e);
    }

    if (response.data is DioError) {
      return resultError(response.data['code']);
    }

    return response.data;
  }
  ResultData resultError(DioError e) {
  Response errorResponse;
  if (e.response != null) {
    errorResponse = e.response;
  } else {
    errorResponse = new Response(statusCode: 666);
  }
  if (e.type == DioErrorType.CONNECT_TIMEOUT ||
      e.type == DioErrorType.RECEIVE_TIMEOUT) {
    errorResponse.statusCode = Code.NETWORK_TIMEOUT;
  }
  return new ResultData(
      errorResponse.statusMessage, false, errorResponse.statusCode);
}

   getDio() {
     return _dio;
   }
   ///获取新token
  Future<String> getToken() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String sessionKey = sp.getString(SharedPreUtils.session_key);
    String userId = sp.getString(SharedPreUtils.user_id);
    String token='';
    try {
      HashMap<String,String> params = HashMap();
      params['session_key'] = sessionKey;
      params['user_id'] = userId;
      var response = await _dio.post('userApi/user_GetToken.php',data:params);
       token = response.data['data']['access_token']; //获取返回的新token
       sp.setString(SharedPreUtils.token, token);
      setToken(token);
            print('newToken:$token');
          } on DioError catch (e) {
            if (e.response == null) {
              print('DioError:${e.message}');
            } else {
              if (e.response.statusCode == 422) {
                print('422Error:${e.response.data['msg']}');
                //422状态码代表异地登录，token失效，发送登录失效事件，以便app弹出登录页面
              }
            }
          }
          return token;
        }
      
        
        
setToken(String token) {
  if(_dio!=null){
    _dio.options.headers= {
      "version":'1.0.0',
       "Authorization":token,
      };
     }
  }
}