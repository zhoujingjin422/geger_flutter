import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 1))),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(1, 249, 249, 250),
        child: Column(
          children: <Widget>[
            SizedBox(height: 12,),
            Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('个人资料',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                    ,
                  )
                ],
              ),

            ),
            Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('账号信息',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                    ,
                  )
                ],
              ),

            ),Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('什么是贡献者',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                    ,
                  )
                ],
              ),

            ),Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('播放模式',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                    ,
                  )
                ],
              ),

            ),
            Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('意见反馈',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                    ,
                  )
                ],
              ),

            ),
            Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('黑名单',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                    ,
                  )
                ],
              ),

            ),
            Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('关于我们',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                    ,
                  )
                ],
              ),

            ),
            Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('服务协议',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                    ,
                  )
                ],
              ),

            ),
            Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('隐私条款',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                    ,
                  )
                ],
              ),

            ),
            Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('清除缓存',style: TextStyle(fontSize: 15,color: Color.fromRGBO(33, 36, 43, 1))),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        Text('2.99M',style: TextStyle(fontSize: 13,color: Color.fromRGBO(149, 149, 154, 1))),
                        SizedBox(width: 3,),
                        Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(149, 149, 154,1),size: 13,)
                      ],
                    )
                    ,
                  )
                ],
              ),

            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 12,right: 12),
              child: Divider(
                height: 1,
                color: Color.fromRGBO(162, 164, 168, 0.1),
              ),
            ),

            Container(
              color: Colors.white,
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left:12,right: 12),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Text('退出登录',style: TextStyle(fontSize: 15,color: Color.fromRGBO(229, 69, 37, 1))),
                  ),
                ],
              ),

            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 24),
                child: Text(
                  '当前版本号V2.0.0',
                  style: TextStyle(
                    fontSize: 13,color: Color.fromRGBO(44, 47, 56, 0.45)
                    
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
