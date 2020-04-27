import 'package:flutterstart/model/banner_model.dart';
import 'package:flutterstart/model/find_detail_model.dart';

class FindModel{
  List<Result> swipes;
  List<FindResult> findRsults;
  int size;
  FindModel(this.swipes,this.findRsults,this.size);
}