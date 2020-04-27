import 'package:json_annotation/json_annotation.dart'; 
  
part 'topic_list_bean.g.dart';


@JsonSerializable()
  class TopicListBean extends Object {

  @JsonKey(name: 'result')
  List<TopicListResult> result;

  TopicListBean(this.result,);

  factory TopicListBean.fromJson(Map<String, dynamic> srcJson) => _$TopicListBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TopicListBeanToJson(this);

}

  
@JsonSerializable()
  class TopicListResult extends Object {

  @JsonKey(name: 'channel_id')
  String channelId;

  @JsonKey(name: 'channel_name')
  String channelName;

  @JsonKey(name: 'children_channel')
  List<Children_channel> childrenChannel;

  TopicListResult(this.channelId,this.channelName,this.childrenChannel,);

  factory TopicListResult.fromJson(Map<String, dynamic> srcJson) => _$TopicListResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TopicListResultToJson(this);

}

  
@JsonSerializable()
  class Children_channel extends Object {

  @JsonKey(name: 'channel_name')
  String channelName;

  @JsonKey(name: 'channel_id')
  String channelId;

  @JsonKey(name: 'channel_image')
  String channelImage;

  @JsonKey(name: 'channel_desc')
  String channelDesc;

  @JsonKey(name: 'channel_banner_image')
  String channelBannerImage;

  Children_channel(this.channelName,this.channelId,this.channelImage,this.channelDesc,this.channelBannerImage,);

  factory Children_channel.fromJson(Map<String, dynamic> srcJson) => _$Children_channelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Children_channelToJson(this);

}

  
