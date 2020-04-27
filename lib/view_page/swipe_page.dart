import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterstart/http/htpp_utils.dart';
import 'package:flutterstart/model/banner_model.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class SwipePage extends StatelessWidget {
   Future<List<Result>> _getData() async{
        Response response = new Response();
       HttpUtils httpUtlis= HttpUtils.getInstance();
        response.data = await httpUtlis.httpGetNoParams('userApi/channel_GetRotationChart.php');
         return BannerModel.fromJson(response.data['data']).result;
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('SwipePage',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,size: 22,),
        elevation: 0,
        centerTitle: true,
      ),
      body: 
  FutureBuilder<List<Result>>(
        future: _getData(),
        builder: (context,snapshot){
          if(snapshot.hasData){
              return Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(children: <Widget>[
                Container(
                height:   150,
                padding: EdgeInsets.only(left:8,right:8,top:12),
                child: Swiper(
                  itemCount: snapshot.data.length,
                  pagination: new SwiperPagination(
                  alignment: Alignment.bottomLeft
                  ),
                  duration: 500,
                  itemBuilder: (context,index){
                    return Image.network('https://videoali.xianzhayugan.com/'+snapshot.data[index].rotationImg,fit: BoxFit.cover,);
                  },
                  autoplay: true,
                ),
              ),
              SizedBox(height: 18,),
              Container(
                height: 100,
                child: GridView.count(crossAxisCount: 4,children:_getItems,),),
              ],
              ),
              );
          }else{
              return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
      );
  }
 
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
}

