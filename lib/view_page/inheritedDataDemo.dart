
import 'package:flutter/material.dart';

class InheritedDataDemo extends StatefulWidget {
  @override
  _InheritedDataDemoState createState() => _InheritedDataDemoState();
}

class _InheritedDataDemoState extends State<InheritedDataDemo> {
   int _count = 0;
  _callback(){
    setState(() {
      _count++;
    });
  }

//  @override
//  Widget build(BuildContext context) {
//    return ProviderCount(_count, _callback, Scaffold(
//      appBar: AppBar(
//        title: Text('InheritedDataDemo'),
//      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//        backgroundColor: Colors.black,
//        onPressed: ,
//      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//      bottomNavigationBar: BottomAppBar(
//        child: Container(
//          height: 80.0,
//        ),
//      ),
//      body: ChildWidget(),
//    ));
//  }
//}
@override
  Widget build(BuildContext context) {
    return ProviderCount(
        count:_count,
        callback:_callback,
        child:Scaffold(
      appBar: AppBar(
        title: Text('InheritedDataDemo'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed: _callback,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
      ),
      body: ChildWidget(),
    ));
  }
}


class ProviderCount extends InheritedWidget{
  final int count;
  final VoidCallback callback;
  final Widget child;

//  ProviderCount(this.count, this.callback, this.child):super(child:child);
  ProviderCount({this.count, this.callback, this.child}):super(child:child);

  static ProviderCount of(BuildContext context)=>
      context.dependOnInheritedWidgetOfExactType<ProviderCount>();
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}

class ChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final _count =  ProviderCount.of(context).count;
   final _callback = ProviderCount.of(context).callback;
    return Center(
      child: ActionChip(
        onPressed: _callback,
        label: Text('$_count'),
      ),
    );
  }
}

