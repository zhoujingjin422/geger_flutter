import 'package:json_annotation/json_annotation.dart'; 
  
part 'banner_model.g.dart';


@JsonSerializable()
  class BannerModel extends Object {

  @JsonKey(name: 'result')
  List<Result> result;

  BannerModel(this.result,);

  factory BannerModel.fromJson(Map<String, dynamic> srcJson) => _$BannerModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);

}

  
@JsonSerializable()
  class Result extends Object {

  @JsonKey(name: 'rotation_id')
  String rotationId;

  @JsonKey(name: 'rotation_img')
  String rotationImg;

  @JsonKey(name: 'rotation_url')
  String rotationUrl;

  @JsonKey(name: 'create_time')
  int createTime;

  @JsonKey(name: 'update_time')
  int updateTime;

  Result(this.rotationId,this.rotationImg,this.rotationUrl,this.createTime,this.updateTime,);

  factory Result.fromJson(Map<String, dynamic> srcJson) => _$ResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

}

  
