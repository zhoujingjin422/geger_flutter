import 'package:flutter/material.dart';

class DataDemoPage extends StatefulWidget {
  @override
  _DataDemoPageState createState() => _DataDemoPageState();
}

class _DataDemoPageState extends State<DataDemoPage> {
  @override
  void initState() {
    super.initState();
  }
  var _dataNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataDemoPage"),
      ),
      body: Center(
        child: Chip(
          label: Text(_dataNum.toString()),
        ),
      ),
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
