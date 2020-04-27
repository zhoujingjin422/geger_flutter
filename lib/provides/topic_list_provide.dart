import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterstart/http/htpp_utils.dart';
import '../model/topic_list_bean.dart';
class TopicListProvide with ChangeNotifier{
  List<TopicListResult> leftLists=[];
  List<Children_channel> rightLists=[];
  int nowIndex=0;

  getData() async{
    if(leftLists.length>0)
    return;
    var httpUtils =HttpUtils();
    var response = new Response();
    response.data = await httpUtils.httpGetNoParams('v2api/findPage_GetTopicTagAll.php');
    print('zjj:'+response.data.toString());
   TopicListBean topicListBean = TopicListBean.fromJson(response.data['data']);
  // TopicListBean topicListBean = json.decode(response.data['data']);
//  leftLists = json.decode(response.data['data']['result']) as List;
  //  print('zjj:topicListBean'+topicListBean.toString());
  //  leftLists = topicListBean.result;
    // leftLists = response.data['data']['result'];
      leftLists = topicListBean.result;
      if(leftLists.length>0){
      rightLists = leftLists[0].childrenChannel;
      }
    notifyListeners();
  }

  changeIndex(index){
    nowIndex = index;
    rightLists=leftLists[index].childrenChannel;
    notifyListeners();
  }

}