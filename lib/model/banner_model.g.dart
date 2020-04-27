// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return BannerModel(
    (json['result'] as List)
        ?.map((e) =>
            e == null ? null : Result.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    json['rotation_id'] as String,
    json['rotation_img'] as String,
    json['rotation_url'] as String,
    json['create_time'] as int,
    json['update_time'] as int,
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'rotation_id': instance.rotationId,
      'rotation_img': instance.rotationImg,
      'rotation_url': instance.rotationUrl,
      'create_time': instance.createTime,
      'update_time': instance.updateTime,
    };
