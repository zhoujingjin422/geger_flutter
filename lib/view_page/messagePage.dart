import 'dart:ui';

import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,//标题栏居中
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('消息',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 1),),
      ),
        leading: Icon(Icons.arrow_back_ios,color: Color.fromRGBO(33, 36, 43, 1),size: 18,),
    ),

      body: Container(
        color: Color.fromRGBO(249, 249, 250, 1),
        child: Container(
          padding: EdgeInsets.only(left: 12,right: 12),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 105,
                padding: EdgeInsets.only(top: 15,bottom: 16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex:1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            alignment: Alignment.topRight,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset('image/icon_like_message.png',fit: BoxFit.cover,),
                              ),
                              Positioned(
                                right: 6,
                                child:  CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color.fromRGBO(229, 69, 37,1 ),

                                ),
                              ),



                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('获赞',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 0.65),fontSize: 13),)
                        ],
                      ),

                    ),
                    Expanded(
                      flex:1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            alignment: Alignment.topRight,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset('image/icon_comment_message.png',fit: BoxFit.cover,),
                              ),
                              Positioned(
                                right: 6,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color.fromRGBO(229, 69, 37,1 ),

                                ),
                              ),


                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('评论',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 0.65),fontSize: 13),)
                        ],
                      ),

                    ),
                    Expanded(
                      flex:1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            alignment: Alignment.topRight,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset('image/icon_fans_message.png',fit: BoxFit.cover,),
                              ),
                              Positioned(
                                right: 6,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color.fromRGBO(229, 69, 37,1 ),

                                ),
                              )

                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('新增粉丝',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 0.65),fontSize: 13),)
                        ],
                      ),

                    ),
                  ],
                ),
              ),
              Container(
                height: 73,
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 27.5,
                      backgroundImage: AssetImage('image/touxiang_new.png'),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 12,right: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('鲜榨英语小助手'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('[系统通知] 欢迎来到鲜榨语感',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 0.45)),),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('12-03',style: TextStyle(
                            color: Color.fromRGBO(33, 36, 43,0.45)
                        ),),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 18,
                          padding: EdgeInsets.only(left: 5,right: 5),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(229, 69, 37, 1),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Text('1',style: TextStyle(fontSize: 13,color: Colors.white),),
                        )

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 73,
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 27.5,
                      backgroundImage: AssetImage('image/ic_launcher_round.png'),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 12,right: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('鲜榨英语官方'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('同学们 交流群见哦',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 0.45)),),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('12-03',style: TextStyle(
                            color: Color.fromRGBO(33, 36, 43,0.45)
                        ),),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 18,
                          padding: EdgeInsets.only(left: 5,right: 5),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(229, 69, 37, 1),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Text('99+',style: TextStyle(fontSize: 13,color: Colors.white),),
                        )

                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
