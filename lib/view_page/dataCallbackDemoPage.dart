import 'package:flutter/material.dart';

class DataCallbackDemoPage extends StatefulWidget {
  @override
  _DataCallbackDemoPageState createState() => _DataCallbackDemoPageState();
}

class _DataCallbackDemoPageState extends State<DataCallbackDemoPage> {
  @override
  void initState() {
    super.initState();
  }
  var _dataNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataCallbackDemoPage"),
      ),
      body:ChildWidget(_dataNum),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
        onPressed: (){
          setState(() {
            _dataNum++;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
class ChildWidget extends StatelessWidget {
  final _dataNum;
  ChildWidget(
      this._dataNum
      );
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Chip(
        label: Text(_dataNum.toString()),
      ),
    );
  }
}

