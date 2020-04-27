import 'dart:ui';

import 'package:flutter/material.dart';

//有高斯模糊效果

class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: 340,
                  width: double.infinity,
                child:Stack(
                  children: <Widget>[
                    Container(
                      height: 340,
                      width: double.infinity,
                      child: Image.network('https://videoali.xianzhayugan.com/avatar/82561585831931902.png',fit: BoxFit.cover),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8,sigmaY: 8),
                      child: new Container(
                        color: Colors.white.withOpacity(0.1),

                      ),
                    )
                  ],
                )
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    AppBar(
                      title: Text('个人资料',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      centerTitle: true,
                      leading: Icon(Icons.arrow_back_ios,color: Colors.white,size: 22,),
                    ),
                    SizedBox(
                      height: 37,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 52,
                          backgroundImage: NetworkImage('https://videoali.xianzhayugan.com/avatar/82561585831931902.png',),
                        ),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          alignment: Alignment.center,
                          child: Icon(Icons.camera_alt,color: Color.fromRGBO(33, 36, 43, 1),size: 18,),
                        )

                      ],
                    )

                  ],
                ),
              ),

            ],
          ),
          Expanded(
            child: Container(
              color: Color.fromRGBO(249, 249, 250, 1),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 12,top: 16,bottom: 12),
                    child: Text('我的信息',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 1),fontSize: 13),),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          height: 42,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12,right: 12),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('昵称',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1),fontSize: 15),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text('待编辑',style: TextStyle(color: Color.fromRGBO(130, 131, 136, 0.85),fontSize: 13)),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154, 1),size: 13,)

                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          endIndent: 12,
                          indent: 12,
                          color: Color.fromRGBO(162, 164, 168, 0.1),
                        ),
                        Container(
                          color: Colors.white,
                          height: 42,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12,right: 12),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('性别',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1),fontSize: 15),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text('待编辑',style: TextStyle(color: Color.fromRGBO(130, 131, 136, 0.85),fontSize: 13)),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154, 1),size: 13,)

                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          endIndent: 12,
                          indent: 12,
                          color: Color.fromRGBO(162, 164, 168, 0.1),
                        ),
                        Container(
                          color: Colors.white,
                          height: 42,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12,right: 12),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('身份',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1),fontSize: 15),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text('待编辑',style: TextStyle(color: Color.fromRGBO(130, 131, 136, 0.85),fontSize: 13)),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154, 1),size: 13,)

                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          endIndent: 12,
                          indent: 12,
                          color: Color.fromRGBO(162, 164, 168, 0.1),
                        ),
                        Container(
                          color: Colors.white,
                          height: 42,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12,right: 12),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('学校',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1),fontSize: 15),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text('待编辑',style: TextStyle(color: Color.fromRGBO(130, 131, 136, 0.85),fontSize: 13)),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154, 1),size: 13,)

                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          endIndent: 12,
                          indent: 12,
                          color: Color.fromRGBO(162, 164, 168, 0.1),
                        ),
                        Container(
                          color: Colors.white,
                          height: 42,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12,right: 12),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('地区',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1),fontSize: 15),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text('待编辑',style: TextStyle(color: Color.fromRGBO(130, 131, 136, 0.85),fontSize: 13)),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154, 1),size: 13,)

                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          endIndent: 12,
                          indent: 12,
                          color: Color.fromRGBO(162, 164, 168, 0.1),
                        ),
                        Container(
                          color: Colors.white,
                          height: 42,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12,right: 12),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('个性签名',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1),fontSize: 15),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text('待编辑',style: TextStyle(color: Color.fromRGBO(130, 131, 136, 0.85),fontSize: 13)),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154, 1),size: 13,)

                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          endIndent: 12,
                          indent: 12,
                          color: Color.fromRGBO(162, 164, 168, 0.1),
                        ),
                        Container(
                          color: Colors.white,
                          height: 42,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12,right: 12),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('生日',style: TextStyle(color: Color.fromRGBO(44, 47, 56, 1),fontSize: 15),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text('待编辑',style: TextStyle(color: Color.fromRGBO(130, 131, 136, 0.85),fontSize: 13)),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154, 1),size: 13,)

                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
//Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.transparent,
//        title: Text('个人资料',style: TextStyle(color: Colors.white),),
//        leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
//        elevation: 0,
//      ),
//    )

class BlurOvalWidget extends StatelessWidget {
  final Widget _widget;
  double _padding = 10;

  BlurOvalWidget(this._widget, {double padding = 0}) {
    if (padding != 0) this._padding = padding;
  }

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          color: Colors.white10,
          padding: EdgeInsets.all(_padding),
          child: _widget,
        ),
      ),
    );
  }
}