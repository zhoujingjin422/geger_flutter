import 'package:dio/dio.dart';
import 'package:flutterstart/http/htpp_utils.dart';

class RefreshTokenInterceptor extends Interceptor{
    @override
  Future onError(DioError err) async{
    if(err.response != null && (err.response.statusCode == 10025||err.response.statusCode == 10031)){
     HttpUtils httpUtils = HttpUtils.getInstance();
     Dio _dio =httpUtils.getDio();
     _dio.lock();
    String token = await httpUtils.getToken();
    _dio.unlock();
   var request = err.response.request; //千万不要调用 err.request
      request.headers['Authorization'] = token; //这里要单独修改之前请求里的token请求头为最新的token。
      try {
        var response = await _dio.request(request.path,
            data: request.data,
            queryParameters: request.queryParameters,
            cancelToken: request.cancelToken,
            options: request,
            onReceiveProgress:request.onReceiveProgress //TODO 差一个onSendProgress
            );
        return response;
      } on DioError catch (e) {
        return e;
      }
    }
    super.onError(err);
  }
}