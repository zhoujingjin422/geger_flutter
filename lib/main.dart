import 'package:flutter/material.dart';
import 'package:flutterstart/provides/topic_list_provide.dart';
import 'package:flutterstart/view_page/SettingPage.dart';
import 'package:flutterstart/view_page/collect_page.dart';
import 'package:flutterstart/view_page/dataCallbackDemoPage.dart';
import 'package:flutterstart/view_page/dataChildCallbackDemoPage.dart';
import 'package:flutterstart/view_page/dataDemoPage.dart';
import 'package:flutterstart/view_page/http_page.dart';
import 'package:flutterstart/view_page/image_picker.dart';
import 'package:flutterstart/view_page/inheritedDataDemo.dart';
import 'package:flutterstart/view_page/messagePage.dart';
import 'package:flutterstart/view_page/modelDataDemo.dart';
import 'package:flutterstart/view_page/parsonalInfoPage.dart';
import 'package:flutterstart/view_page/scroll_page.dart';
import 'package:flutterstart/view_page/swipe_page.dart';
import 'package:provider/provider.dart';
import './view_page/pageFind.dart';
import './view_page/pageHome.dart';
import './view_page/pageMore.dart';
void main() => runApp(MyMain());

class MyMain extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>TopicListProvide(),)
      ],
      child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryIconTheme: IconThemeData(
          color: Colors.black38,
          opacity: 12.0,
          size: 32.0,
        ),

      ),
    //  initialRoute: "/swipePage",
    //  routes: {
    //    '/data': (context)=>DataDemoPage(),
    //    '/dataCallback': (context)=>DataCallbackDemoPage(),
    //    '/dataChildCallback': (context)=>DataChildCallbackDemoPage(),
    //    '/dataInherited': (context)=>InheritedDataDemo(),
    //    '/dataModel': (context)=>ModelDataDemo(),
    //    '/setting': (context)=>SettingPage(),
    //    '/personalInfo': (context)=>PersonalInfoPage(),
    //    '/message': (context)=>MessagePage(),
    //    '/scrollPage': (context)=>ScrollPage(),
    //    '/collectPage': (context)=>CollectPage(),
    //    '/httpPage': (context)=>HttpPage(),
    //    '/imagePicker': (context)=>ImagePickerPage(),
    //    '/swipePage': (context)=>SwipePage(),
    //  },
      home: MyHomePage(),
    ),
    );
    
   
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomNavigationBarItem> _bottomNavigationList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.map),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.find_in_page),
      title: Text('发现'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.more),
      title: Text('更多'),
    ),
  ];
  List<Widget> _pageList=[
   PageHome(),
   PageFind(),
   PageMore(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
      currentIndex: currentIndex,
      items: _bottomNavigationList,
      onTap: (index){
        setState(() {
          this.currentIndex = index;
        });
      },
    ),
    body: _pageList[currentIndex],
//    body: _pageList[currentIndex],

    );
  }
}
