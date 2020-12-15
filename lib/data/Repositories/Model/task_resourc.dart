import 'package:json_annotation/json_annotation.dart';
part 'task_resourc.g.dart';

@JsonSerializable(nullable: false, fieldRename: FieldRename.snake)
class TaskResource{
  String id;
  //@JsonKey(name: 'create_at')
  String createat;
  String description;
  String title;

  //  Construtor
  TaskResource({this.id, this.createat, this.description, this.title});

  // metudos 
 /* Map<String, dynamic> toJason(){
    var json = Map<String, dynamic>();
    json['id'] = this.id;
    json['createat'] = this.createat;
    json['description'] = this.description;
    json['title'] = this.title;

    return json;
     
  }*/
  Map<String, dynamic> toJason(){
    return _$TaskResourceToJson(this);
   /* return {
      id : this.id,
      createat:  this.createat,
      description :  this.description,
      title : this.title,
    };*/
  }

  /*TaskResourse fromJason(Map<String, dynamic> jsonMap){
    var taskResourse = TaskResourse(
      id : jsonMap['id'],
      title : jsonMap['title'],
      createat : jsonMap['createat'],
      description : jsonMap['description'],

    );
     return taskResourse;
  }*/
  static TaskResource fromJason(Map<String, dynamic> jsonMap){
      return _$TaskResourceFromJson(jsonMap);

      /*
      this.id = jsonMap['id'];
      this.title = jsonMap['title'];
      this.createat = jsonMap['createat'];
      this.description = jsonMap['description'];
      */
  }
}
