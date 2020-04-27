import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterstart/model/banner_model.dart';
import '../http/htpp_utils.dart';

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  List<Result> lists = [];
  void _getData() async {
    Response response = new Response();
    HttpUtils httpUtlis = HttpUtils.getInstance();
    response.data =
        await httpUtlis.httpGetNoParams('f2api/taskPage_GetRotationChart.php');
    setState(() {
      lists = BannerModel.fromJson(response.data['data']).result;
    });
  }

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'banner',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 22,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: lists.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Image.network(
                    'https://videoali.xianzhayugan.com/' +
                        lists[index].rotationImg,
                    fit: BoxFit.cover,
                  ));
            }),
      ),
    );
  }
}
