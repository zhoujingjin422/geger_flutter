import 'package:flutter/material.dart';
import 'package:flutterstart/model/topic_list_bean.dart';
import 'package:flutterstart/provides/topic_list_provide.dart';
import 'package:provider/provider.dart';
class TopicListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('话题',style: TextStyle(color: Colors.black),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 22,),
          ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Consumer<TopicListProvide>(
        builder: (context,provider,_){
          provider.getData();
          if(provider.leftLists.length==0){//no data show a progress bar
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{//have data show need view
            return Container(
              child: Row(
                children: <Widget>[
                  _leftListView(context,provider.leftLists),
                  _rightGrideView(context)
                ],
              ),
            );
          }
         
        },
      ),
      );
  }

 
}
 _leftListView(BuildContext context, List<TopicListResult> leftLists) {
    return Container(
      width: 104,
      child: ListView.builder(
        itemBuilder: (context,index){
            return _leftItem(context,leftLists[index],index);
        },
        itemCount: leftLists.length,
        ),
    );
  }

 
 _rightGrideView(BuildContext context) {
    var rightList = Provider.of<TopicListProvide>(context, listen: false).rightLists;
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          ), 
          itemBuilder: (contex,index){
            return _rightItem(context,rightList[index]);
          },
          itemCount: rightList.length,
          ),

      ),
    );
  }
_rightItem(contex,childrenChannel){
  return Card(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.5))),
    child: Container(
      height: 105,
      child: Stack(
    children: <Widget>[
      Image.network('https://videoali.xianzhayugan.com/'+childrenChannel.channelImage,fit: BoxFit.cover,),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6.5)),
          color: Colors.black12,

        ),
        child: Center(
        child: Text(childrenChannel.channelName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
      ),)
      
    ],
  ),
    ),
  );
}

_leftItem(BuildContext context, TopicListResult leftList,int index) {
  bool selected = Provider.of<TopicListProvide>(context, listen: false).nowIndex==index;
  return InkWell(
    onTap: (){
      Provider.of<TopicListProvide>(context, listen: false).changeIndex(index);
    },
    child: Container(
      alignment: Alignment.centerLeft,
      height: 43,
      color: selected?Colors.white:Color.fromRGBO(249, 249, 250, 1),
      child: Container(
        margin: EdgeInsets.only(left:9,),
        padding: EdgeInsets.only(left:9),
        decoration: BoxDecoration(
        border: Border(left: BorderSide(width: 2,color: selected?Colors.red:Color.fromRGBO(249, 249, 250, 1)))
      ),
        child: Text(leftList.channelName,style: TextStyle(color: Color.fromRGBO(33, 36, 43, 1),fontSize: 15),),
        ),
    ),
  );
}