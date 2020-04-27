import 'package:flutter/material.dart';
import 'package:flutterstart/view_page/SettingPage.dart';
import 'package:flutterstart/view_page/collect_page.dart';
import 'package:flutterstart/view_page/find_page.dart';
import 'package:flutterstart/view_page/http_page.dart';
import 'package:flutterstart/view_page/image_picker.dart';
import 'package:flutterstart/view_page/messagePage.dart';
import 'package:flutterstart/view_page/parsonalInfoPage.dart';
import 'package:flutterstart/view_page/scroll_page.dart';
import 'package:flutterstart/view_page/swipe_page.dart';
import 'package:flutterstart/view_page/topic_list.dart';

class PageMore extends StatelessWidget {
  //'/setting': (context)=>SettingPage(),
  //        '/personalInfo': (context)=>PersonalInfoPage(),
  //        '/message': (context)=>MessagePage(),
  //        '/scrollPage': (context)=>ScrollPage(),
  //        '/collectPage': (context)=>CollectPage(),
  final List<Widget> pages = [
    SettingPage(),
    PersonalInfoPage(),
    MessagePage(),
    ScrollPage(),
    CollectPage(),
    HttpPage(),
    SwipePage(),
    ImagePickerPage(),
    FindPage(),
    TopicListPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('更多',style: TextStyle(color: Color.fromRGBO(33, 36, 43, 1),fontSize: 18),),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: null,
      ),
      body: Container(
        color: Color.fromRGBO(249, 249, 250, 1),
        padding: EdgeInsets.only(left: 12,right: 12,top: 12),
        child: ListView.builder(itemBuilder: (context,index){
          return Center(
            child: FlatButton(
              child: Container(
                padding: EdgeInsets.only(left: 12,right: 12),
                width: double.infinity,
                child: Text('${pages[index].toString()}'),
              ),
              color: Colors.green.withOpacity(0.1*(index+1)),
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>pages[index])),
            ),
          );
        },
        itemCount: pages.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(top: 12,bottom: 12),),

      ),
    );
  }
}
