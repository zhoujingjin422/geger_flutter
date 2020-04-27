
import 'package:flutter/material.dart';

class ScrollPage extends StatefulWidget {
  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
   GlobalKey key = GlobalKey<ScaffoldState>();
  var _myController = ScrollController(

  );
  var changeColor = false;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myController.addListener(() {
      print('offset:'+_myController.offset.toString());
      if (_myController.offset < 150 && changeColor) {
        setState(() {
          changeColor = false;
        });
      } else if (_myController.offset >= 150 && changeColor == false) {
        setState(() {
          changeColor = true;
        });
      }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _myController.dispose();
  }
   _listItem(BuildContext context,int index){
      if(index==0){
        return FirstItem();
      }else{
        return CommentItem();
      }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: CustomScrollView(
        controller: _myController,
        slivers: <Widget>[
          SliverAppBar(
              centerTitle: true,
              leading: Icon(Icons.arrow_back_ios,color: changeColor?Colors.black:Colors.white,size: 22,),
              backgroundColor: changeColor?Colors.white:Colors.transparent,
            title: Text(changeColor?'户外旅游':"",style: TextStyle(color:changeColor?Colors.black:Colors.white ),),
              elevation: 2,
              expandedHeight: 240,
//              floating: true,
//              snap: true,
              pinned: true,
              flexibleSpace:FlexibleSpaceBar(
//              title: Text('户外旅游'),
//              stretchModes: ,
//              centerTitle: true,
                background: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage('https://videoali.xianzhayugan.com/avatar/82561585831931902.png'),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 12,right: 12,bottom: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('户外旅游',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('此二级播单的内容相关描述',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),),
                        ],
                      ),
                    )
                ),
              )
            /*Image.network('https://videoali.xianzhayugan.com/avatar/82561585831931902.png',fit: BoxFit.cover,) */
//             pinned: true,
//            flexibleSpace: Container(
//              width: double.infinity,
//              decoration: BoxDecoration(
//                color: Colors.transparent,
//                image: DecorationImage(
//                  image: NetworkImage('https://videoali.xianzhayugan.com/avatar/82561585831931902.png',),
//                  fit: BoxFit.cover
//                )
//              ),
////              child: Container(
////                padding: EdgeInsets.only(left: 12,right: 12,bottom: 24),
////                child: Column(
////                  crossAxisAlignment: CrossAxisAlignment.start,
////                  mainAxisAlignment: MainAxisAlignment.end,
////                  children: <Widget>[
////                      Text('户外旅游',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
////                      SizedBox(height: 5,),
////                      Text('此二级播单的内容相关描述',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),),
////                  ],
////                ),
////              ),
//            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildBuilderDelegate(
//                (BuildContext context,int index){
//                  return _listItem();
//                }
                    (context,index)=>_listItem(context,index),
                childCount: 20
            ),
          )
        ],
      ),
    );
  }
}

class FirstItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(249, 249, 250, 1),
      padding: EdgeInsets.only(left: 12,top: 11,bottom: 15),
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Text('包含视频难度:',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 1),fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(width: 5,),
          Container(
            alignment: Alignment.center,
            height: 17,
            padding: EdgeInsets.only(left: 16,right: 16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(254, 162, 43, 0.2),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text('简单',style: TextStyle(color: Color.fromRGBO(254, 162, 43, 1),fontSize: 11),),
          ),
          SizedBox(width: 8,),
          Container(
            alignment: Alignment.center,
            height: 17,
            padding: EdgeInsets.only(left: 16,right: 16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(130, 104, 220, 0.2),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text('进阶',style: TextStyle(color: Color.fromRGBO(254, 103, 42, 1),fontSize: 11),),
          ),
          SizedBox(width: 8,),
          Container(
            alignment: Alignment.center,
            height: 17,
            padding: EdgeInsets.only(left: 16,right: 16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(130, 104, 220, 0.2),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text('真实世界',style: TextStyle(color: Color.fromRGBO(129, 103, 220, 1),fontSize: 11),),
          )
        ],
      ),
    );
  }
}

class CommentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(249, 249, 250, 1),
      padding: EdgeInsets.only(left: 12,bottom: 12,right: 12),
      child: Card(
        elevation: 0.3,
        color: Colors.white,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 10,),
            Expanded(
              child:
              Text('#话题播单名',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 1),fontSize: 15,fontWeight: FontWeight.bold),),),
            Container(
              alignment: Alignment.center,
              height: 17,
              padding: EdgeInsets.only(left: 16,right: 16),
              decoration: BoxDecoration(
                color: Color.fromRGBO(254, 162, 43, 0.2),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text('简单',style: TextStyle(color: Color.fromRGBO(254, 162, 43, 1),fontSize: 11),),
            ),
            SizedBox(width: 8,),
            Container(
              alignment: Alignment.center,
              height: 17,
              padding: EdgeInsets.only(left: 16,right: 16),
              decoration: BoxDecoration(
                color: Color.fromRGBO(130, 104, 220, 0.2),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text('进阶',style: TextStyle(color: Color.fromRGBO(254, 103, 42, 1),fontSize: 11),),
            ),
//            SizedBox(width: 8,),
//            Container(
//              alignment: Alignment.center,
//              height: 17,
//              padding: EdgeInsets.only(left: 16,right: 16),
//              decoration: BoxDecoration(
//                color: Color.fromRGBO(130, 104, 220, 0.2),
//                borderRadius: BorderRadius.circular(3),
//              ),
//              child: Text('真实世界',style: TextStyle(color: Color.fromRGBO(129, 103, 220, 1),fontSize: 11),),
//            ),
            SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
}






