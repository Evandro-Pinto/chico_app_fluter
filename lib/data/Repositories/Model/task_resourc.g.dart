// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_resourc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResource _$TaskResourceFromJson(Map<String, dynamic> json) {
  return TaskResource(
    id: json['id'] as String,
    createat: json['createat'] as String,
    description: json['description'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$TaskResourceToJson(TaskResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createat': instance.createat,
      'description': instance.description,
      'title': instance.title,
    };
