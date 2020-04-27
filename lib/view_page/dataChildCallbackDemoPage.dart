import 'package:flutter/material.dart';

class DataChildCallbackDemoPage extends StatefulWidget {
  @override
  _DataChildCallbackDemoPageState createState() => _DataChildCallbackDemoPageState();
}

class _DataChildCallbackDemoPageState extends State<DataChildCallbackDemoPage> {
  @override
  void initState() {
    super.initState();
  }
  var _dataNum = 0;
  _callBack(){
    setState(() {
      _dataNum++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataChildCallbackDemoPage"),
      ),
      body:ChildWidget(_dataNum,_callBack),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
        onPressed: _callBack,
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
  final VoidCallback _childCallBack;
  ChildWidget(
      this._dataNum,
      this._childCallBack
      );
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ActionChip(
        label: Text(_dataNum.toString()),
        onPressed: _childCallBack,
      ),
    );
  }
}

