// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindDetailModel _$FindDetailModelFromJson(Map<String, dynamic> json) {
  return FindDetailModel(
    (json['result'] as List)
        ?.map((e) =>
            e == null ? null : FindResult.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FindDetailModelToJson(FindDetailModel instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

FindResult _$FindResultFromJson(Map<String, dynamic> json) {
  return FindResult(
    json['name'] as String,
    (json['videoData'] as List)
        ?.map((e) =>
            e == null ? null : VideoData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['type'] as int,
    json['score'] as int,
  );
}

Map<String, dynamic> _$FindResultToJson(FindResult instance) =>
    <String, dynamic>{
      'name': instance.name,
      'videoData': instance.videoData,
      'type': instance.type,
      'score': instance.score,
    };

VideoData _$VideoDataFromJson(Map<String, dynamic> json) {
  return VideoData(
    json['video_name'] as String,
    json['video_title'] as String,
    json['user_image'] as String,
    json['like'] as int,
    json['user_id'] as String,
    json['video_city'] as String,
    json['video_img'] as String,
    json['user_nikename'] as String,
    json['comment'] as int,
    (json['tag'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['video_location'] as String,
    json['video_id'] as String,
  );
}

Map<String, dynamic> _$VideoDataToJson(VideoData instance) => <String, dynamic>{
      'video_name': instance.videoName,
      'video_title': instance.videoTitle,
      'user_image': instance.userImage,
      'like': instance.like,
      'user_id': instance.userId,
      'video_city': instance.videoCity,
      'video_img': instance.videoImg,
      'user_nikename': instance.userNikename,
      'comment': instance.comment,
      'tag': instance.tag,
      'video_location': instance.videoLocation,
      'video_id': instance.videoId,
    };

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    json['tag_name'] as String,
    json['tag_type'] as String,
    json['tag_id'] as String,
  );
}

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'tag_name': instance.tagName,
      'tag_type': instance.tagType,
      'tag_id': instance.tagId,
    };
