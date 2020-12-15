import 'dart:convert';

import 'package:get/get.dart';
import 'package:helloworld/data/Repositories/model/task_resourc.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController{
    final isLogger = true.obs; 
    final isLogging = true.obs; 
    final visitList = List<TaskResource>().obs;

    @override
  void onReady() async {
    var response = await
         http.get('https://5faaf775dbbef70016d47f6f.mockapi.io/api/v1/tasks') ;
      print(response.body);

      var jsonMap = jsonDecode(response.body);

      for(Map<String,dynamic> j in jsonMap){
          var task = TaskResource.fromJason(j);
          visitList.add(task);
      }
    super.onReady();
  }
    void add() async{
      print("Entrou");
      //visitList.add(TaskResourse());
      isLogging.value = true;
      Future.delayed(Duration(minutes: 1), (){
        isLogging.value = false;

      });
    }

}