import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/core/colors.dart';
import 'package:helloworld/core/components/app_bottom_bar_item.dart';
import 'package:helloworld/core/components/visit_list_item.dart';
import 'package:helloworld/ui/pages/home/controller/home_page_controller.dart';

class HomePage extends StatelessWidget {
  	// const HomePage({Key key}) : super(key: key);
  final homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Obx (()=>ListView.builder(
          itemCount: homePageController.visitList.length,
          itemBuilder: (_, index) {
            return VisitListItem(
              image: index,
            );
          },
        ),
      ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          color: appPrimaryColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBottomBarItem(
                icon: Icon(Icons.menu),
                label: 'Visita',
                onPressed: () => null,
              ),
              Expanded(
                child: Container(),
              ),
              AppBottomBarItem(
                icon: Icon(Icons.list),
                label: 'Tarefa',
                onPressed: () => null,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          homePageController.add()
        },
        tooltip: 'Increment Counter',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: appDarkColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
