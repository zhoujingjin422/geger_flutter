// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_list_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopicListBean _$TopicListBeanFromJson(Map<String, dynamic> json) {
  return TopicListBean(
    (json['result'] as List)
        ?.map((e) => e == null
            ? null
            : TopicListResult.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TopicListBeanToJson(TopicListBean instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

TopicListResult _$TopicListResultFromJson(Map<String, dynamic> json) {
  return TopicListResult(
    json['channel_id'] as String,
    json['channel_name'] as String,
    (json['children_channel'] as List)
        ?.map((e) => e == null
            ? null
            : Children_channel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TopicListResultToJson(TopicListResult instance) =>
    <String, dynamic>{
      'channel_id': instance.channelId,
      'channel_name': instance.channelName,
      'children_channel': instance.childrenChannel,
    };

Children_channel _$Children_channelFromJson(Map<String, dynamic> json) {
  return Children_channel(
    json['channel_name'] as String,
    json['channel_id'] as String,
    json['channel_image'] as String,
    json['channel_desc'] as String,
    json['channel_banner_image'] as String,
  );
}

Map<String, dynamic> _$Children_channelToJson(Children_channel instance) =>
    <String, dynamic>{
      'channel_name': instance.channelName,
      'channel_id': instance.channelId,
      'channel_image': instance.channelImage,
      'channel_desc': instance.channelDesc,
      'channel_banner_image': instance.channelBannerImage,
    };
