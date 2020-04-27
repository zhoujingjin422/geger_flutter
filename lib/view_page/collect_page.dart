import 'package:flutter/material.dart';

class CollectPage extends StatelessWidget {
  final List<String> names =['视频库','词汇库','短语库','句型库'];//RGBA(255, 187, 1, 1)
  final List<Color> colors =[Color.fromRGBO(218, 129, 173, 1),Color.fromRGBO(252, 100, 67, 1),Color.fromRGBO(132, 89, 195, 1),Color.fromRGBO(255, 187, 1, 1)];//RGBA(218, 129, 173, 1)
  _createItem(int index){
    return Card(
      elevation: 0,
      color:colors[index],
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      child: Container(
        alignment: Alignment.center,
//      decoration: BoxDecoration(
//        color:colors[index] ,
//        borderRadius: BorderRadius.circular(5)
//      ),
        child: Text(names[index],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('喜欢和收藏',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 1),fontSize: 18),),
          leading: Icon(Icons.arrow_back_ios,size: 22,color: Color.fromRGBO(33, 36, 43, 1),),
          elevation: 0,
        ),
        body: Container(
          color: Color.fromRGBO(249, 249, 250, 1),
          padding: EdgeInsets.only(left: 12,right: 12,top: 16),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,//2列
              childAspectRatio: 1,//宽高比
              crossAxisSpacing: 14,
              mainAxisSpacing: 14
          ),
            itemBuilder: (context,index)=>_createItem(index),
            itemCount: names.length,),

        )
      ),
    );
  }
}
