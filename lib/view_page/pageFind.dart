import 'package:flutter/material.dart';
class PageFind extends StatefulWidget {
  @override
  _PageFindState createState() => _PageFindState();
}

class _PageFindState extends State<PageFind> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  void _showBottomSheet() {
    _bottomSheetScaffoldKey.currentState.showBottomSheet((context) =>
        BottomAppBar(
          child: Container(
            width: double.infinity,
            height: 160,
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 16,),
                Text("拍照"),
                SizedBox(height: 16,),
                Text("相册"),
                SizedBox(height: 16,),
                Text("取消"),
                SizedBox(height: 16,),
              ],
            ),
          ),
        ));
  }
  _showBottomModelSheet() async{

   final label = await showModalBottomSheet(
        context: context,
        builder:(context)=>Container(
          width: double.infinity,
          height: 250,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.label),
                title: Text('Label A'),
                subtitle: Text('Label desc A'),
                onTap: (){
                  Navigator.of(context).pop("A");
                },
              ),

              ListTile(
                leading: Icon(Icons.label),
                title: Text('Label B'),
                subtitle: Text('Label desc B'),
                onTap: (){
                  Navigator.of(context).pop("B");
                },
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text('Label C'),
                subtitle: Text('Label desc C'),
                onTap: (){
                  Navigator.of(context).pop("C");
                },
              ),
            ],
          ),
        ));
   print('_PageFindState'+label);
  }
  _showSnackBar(){
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('loading'),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: 'ok',
          onPressed: (){
//            Navigator.of(context).pop("ok");
          },
        ),

      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Chip(
              label: Text("你好"),
            ),
            FlatButton(
              child: Text("hello"),
              onPressed: (){},
            ),
            OutlineButton(
              child: Text("我有边框"),
              onPressed: _showSnackBar,
              borderSide: BorderSide(
                  color: Colors.black
              ),
              textColor: Colors.grey,
              shape: StadiumBorder(),

            ),
            RaisedButton(
              onPressed: _showBottomSheet,
              child: Container(
                width: 90,
                child: Column(
                  children: <Widget>[
                    Text("text1"),
                    Icon(Icons.map)
                  ],

                ),
              ),
              textColor: Colors.redAccent,
            ),
            RaisedButton.icon(
              icon: Icon(Icons.add),
              label: Text("点我"),
              onPressed: _showBottomModelSheet,
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              splashColor: Colors.black26,
              shape: StadiumBorder(),

            )
          ],
        ),
      ),
    );
  }
}

