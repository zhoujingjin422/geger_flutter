import 'dart:collection';
import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterstart/http/htpp_utils.dart';
import 'package:flutterstart/model/banner_model.dart';
import 'package:flutterstart/model/find_detail_model.dart';
import 'package:flutterstart/model/find_model.dart';

class FindPage extends StatelessWidget {
        // FindModel _setData(List<List<Object>> value) {
        //   return FindModel(value[0],value[1],value[1].length+1);
        // }

    Future<FindModel> _getBothData() async{
      FindModel findModel;
      List<Response> response;
      Dio dio = Dio();
        var params={'page':"1",'difficulty':"1",'user_id':"376010171777810432",};
   
      response = await Future.wait([
              dio.get('https://master.xianzhayugan.com/v2api/findPage_Recommend.php',queryParameters: params), 
              dio.get('https://master.xianzhayugan.com/userApi/channel_GetRotationChart.php')]);
     print('zjj精彩'+response[0].data.toString());         
     print("zjj轮播图"+response[1].data.toString());         
    //   Response response = new Response();
    //   Response response1 = new Response();
    //   HttpUtils httpUtlis= HttpUtils.getInstance();
    //   // Dio dio = Dio();
    //   var params={'page':"1",'difficulty':"1",'user_id':"376010171777810432",};
    // //  response1.data = await dio.get('https://master.xianzhayugan.com/v2api/findPage_Recommend.php',queryParameters: params);
    //   response1.data =httpUtlis.httpGet('v2api/findPage_Recommend.php', params);  
    //   print("zjj精彩"+response1.data['data'].toString());
      List<FindResult> findResults = FindDetailModel.fromJson(response[0].data['data']).result;
    // //  dio.close();
    //   // Dio dio2 = Dio();
    //   // response.data = await dio2.get('https://master.xianzhayugan.com/userApi/channel_GetRotationChart.php');
    //    response.data = await httpUtlis.httpGetNoParams('userApi/channel_GetRotationChart.php');
    //   print("zjj轮播图"+response.data.toString());
      List<Result> swipes =  BannerModel.fromJson(response[1].data['data']).result;
      findModel = FindModel(swipes,findResults,findResults.length+2);
      return findModel;
    }
      //  Future  _getFindDetail() async{
      //    Response response;
      //     //  Response response = new Response();
      //     // HttpUtils httpUtlis= HttpUtils.getInstance();
      //    Dio dio = Dio();
        
      //     // HashMap<String,String> params = HashMap();
      //     var params={'page':"1",'difficulty':"1",'user_id':"376010171777810432",};
      //     // params['page'] = '1';
      //     // params['difficulty']='1';
      //     // params['user_id'] ='376010171777810432';
      //     response =await dio.get('https://master.xianzhayugan.com/v2api/findPage_Recommend.php',queryParameters: params);
      //     // response.data =await httpUtlis.httpGet('v2api/findPage_Recommend.php', params);
      //     print("zjj"+response.data);
      //     return response.data;
      //   }
        // Future<List<Result>> _getBanner() async{
        //       Response response = new Response();
        //      HttpUtils httpUtlis= HttpUtils.getInstance();
        //       response.data = await httpUtlis.httpGetNoParams('userApi/channel_GetRotationChart.php');
        //        return BannerModel.fromJson(response.data['data']).result;
        //    }
      
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title:Text('FindPage',style: TextStyle(color: Colors.black),),
              backgroundColor: Colors.white,
              leading: Icon(Icons.arrow_back_ios,color: Colors.black,size: 22,),
              elevation: 0,
              centerTitle: true,
            ),
            body:  
             FutureBuilder<FindModel>(
              future: _getBothData(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return ListView.builder(
                    itemBuilder: (context,index)=>_createItems(context,index,snapshot.data),
                    itemCount: snapshot.data.size,
                    );
                }else if(snapshot.hasError){
                  return Center(child:Text(snapshot.error.toString())); 
                }else{
                  return Center(child:CircularProgressIndicator());
                }
              },
            )
          );
        }
      //   _createItems(BuildContext context,int index,List<FindResult> findResults){
      //   if(index==0){
      //       return GrideWight();
      //   }else{
      //   //  int type = findModel.findRsults[index-2].type;
      //    String name = findResults[index-1].name;
      //       return Container(child: Text(name),);
      //   }
      // }
}
      _createItems(BuildContext context,int index,FindModel findModel){
        if(index==0){
            return SwipeWight(findModel.swipes);
        }else if(index==1){
            return GrideWight();
        }else{
        //  int type = findModel.findRsults[index-2].type;
         String name = findModel.findRsults[index-2].name;
            return Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left:12),
              child: Text(name),
              );
        }
      }
// }
class SwipeWight extends StatelessWidget {
  final List<Result> swipes;
  SwipeWight(this.swipes);

  @override
  Widget build(BuildContext context) {
    return Container(
                height:   150,
                padding: EdgeInsets.only(left:8,right:8,top:12),
                child: Swiper(
                  itemCount: swipes.length,
                  pagination: new SwiperPagination(
                  alignment: Alignment.bottomCenter
                  ),
                  duration: 500,
                  itemBuilder: (context,index){
                    return Image.network('https://videoali.xianzhayugan.com/'+swipes[index].rotationImg,fit: BoxFit.cover,);
                  },
                  autoplay: true,
                ),
              );
  }
}
class GrideWight extends StatelessWidget {
  final List<Widget> _getItems=[
    Container(
      child: Column(
        children: <Widget>[
          SizedBox(width: 46,height: 56,child: Image.asset('image/icon_topic.png',fit: BoxFit.fitWidth,),),
          Text('话题',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1)),)
        ],
      ),
    ),
    Container(
      child: Column(
        children: <Widget>[
          SizedBox(width: 46,height: 56,child: Image.asset('image/icon_new.png',fit: BoxFit.fitWidth,),),
          Text('入门',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1)),)
        ],
      ),
    ),
    Container(
      child: Column(
        children: <Widget>[
          SizedBox(width: 46,height: 56,child: Image.asset('image/icon_word.png',fit: BoxFit.fitWidth,),),
          Text('词汇',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1)),)
        ],
      ),
    ),
    Container(
      child: Column(
        children: <Widget>[
          SizedBox(width: 46,height: 56,child: Image.asset('image/icon_sentence.png',fit: BoxFit.fitWidth,),),
          Text('短语',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1)),)
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: EdgeInsets.only(top:15),
              height: 100,
              child: GridView.count(crossAxisCount: 4,children:_getItems,),);
  }
}