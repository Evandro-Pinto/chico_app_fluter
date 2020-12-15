import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:helloworld/core/colors.dart';
//import 'package:helloworld/core/components/app_primary_button.dart';

class VisitPage extends StatelessWidget {
  DateTime _selectedDate = DateTime.now();
  final CalendarWeekController _controller = CalendarWeekController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(children: [
              Text(
                "18:36",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 32.0,
                width: 16.0,
              ),
              Text(
                "Bem-vindo Maria",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 28.0,
                ),
              ),
              CircleAvatar(
                
                radius: 35,
                backgroundColor: appWhiteColor,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('/images/download.jpg'),
                ),
              ),
              Text(
                "09/11/2020",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 16.0,
              ),
              CalendarWeek(
                controller: _controller,
                height: 50,
                pressedDateBackgroundColor: appDarkColor,
                todayBackgroundColor: appDarkColor,
                todayDateStyle: TextStyle(color: appGreyColor),
                
                minDate: DateTime.now().add(
                  Duration(days: -365),
                ),
              ),
              SizedBox(
                height: 24.0,
                width: 16.0,
              ),
              Text(
                "Visita",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 32.0),
              ),
              
              SizedBox(
                height: 240.0,
                width: 16.0,
              ),
              FloatingActionButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                child: Icon(
                  Icons.add,
                  size: 40.0,
                  color: appWhiteColor,
                ),
                backgroundColor: appDarkColor,
              ),
            ])));
  }
}
