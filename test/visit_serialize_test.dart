import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:helloworld/data/Repositories/Model/task_resourc.dart';
import 'package:http/http.dart' as http;

void main() {
  test("serialize test", () async {
    //setup
    /*var taskResource = TaskResource(
        id: "1",
        title: "Chico-Plus",
        description: "Test 1",
        creatAt: "10-12-2020",
        sexo: "F",
        user: "Evandro");
    //act
    var json = taskResource.toJason();
    print("Json: $jsonEncode(json)");
    //assert
    expect(json['id'], taskResource.id);
  });
  test("disserialize test", () async {
      //setup
      var json =
          '{"id":"1","title":"Chico-Plus","description":"Test 1","created_at":"do day"}';
      //act
      var jsonMap = jsonDecode(json);

      //var taskResource = TaskResource().fromJason(jsonMap);
      //assert
      //expect(taskResource.id, jsonMap['id']);
  });
  test("get all visits with all success", () {
    //setup

    //act

    //assert*/
  });
}
