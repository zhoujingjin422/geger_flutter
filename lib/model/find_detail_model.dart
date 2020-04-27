import 'package:json_annotation/json_annotation.dart'; 
  
part 'find_detail_model.g.dart';


@JsonSerializable()
  class FindDetailModel extends Object {

  @JsonKey(name: 'result')
  List<FindResult> result;

  FindDetailModel(this.result,);

  factory FindDetailModel.fromJson(Map<String, dynamic> srcJson) => _$FindDetailModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FindDetailModelToJson(this);

}

  
@JsonSerializable()
  class FindResult extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'videoData')
  List<VideoData> videoData;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'score')
  int score;

  FindResult(this.name,this.videoData,this.type,this.score,);

  factory FindResult.fromJson(Map<String, dynamic> srcJson) => _$FindResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FindResultToJson(this);

}

  
@JsonSerializable()
  class VideoData extends Object {

  @JsonKey(name: 'video_name')
  String videoName;

  @JsonKey(name: 'video_title')
  String videoTitle;

  @JsonKey(name: 'user_image')
  String userImage;

  @JsonKey(name: 'like')
  int like;

  @JsonKey(name: 'user_id')
  String userId;

  @JsonKey(name: 'video_city')
  String videoCity;

  @JsonKey(name: 'video_img')
  String videoImg;

  @JsonKey(name: 'user_nikename')
  String userNikename;

  @JsonKey(name: 'comment')
  int comment;

  @JsonKey(name: 'tag')
  List<Tag> tag;

  @JsonKey(name: 'video_location')
  String videoLocation;

  @JsonKey(name: 'video_id')
  String videoId;

  VideoData(this.videoName,this.videoTitle,this.userImage,this.like,this.userId,this.videoCity,this.videoImg,this.userNikename,this.comment,this.tag,this.videoLocation,this.videoId,);

  factory VideoData.fromJson(Map<String, dynamic> srcJson) => _$VideoDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VideoDataToJson(this);

}

  
@JsonSerializable()
  class Tag extends Object {

  @JsonKey(name: 'tag_name')
  String tagName;

  @JsonKey(name: 'tag_type')
  String tagType;

  @JsonKey(name: 'tag_id')
  String tagId;

  Tag(this.tagName,this.tagType,this.tagId,);

  factory Tag.fromJson(Map<String, dynamic> srcJson) => _$TagFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TagToJson(this);

}

  
