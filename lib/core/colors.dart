import 'package:flutter/material.dart';

const Map<int, Color> color = {
  50: Color(0xFF4FBA30),
  100: Color(0xFF0E5229),
  200: Color(0xFFFFFFFF),
  300: Color(0xFF78909c),
  400: Color(0xFFEF5350),
  500: Color(0xFF4FBA30),
  600: Color(0xFF4FBA30),
  700: Color(0xFF4FBA30),
  800: Color(0xFF4FBA30),
  900: Color(0xFF4FBA30),
};

const MaterialColor appPrimaryMaterialColor = MaterialColor(0xFF4FBA30, color);

const appPrimaryColor = const Color(0xFF4FBA30);
const appDarkColor = const Color(0xFF0E5229);
const appWhiteColor = const Color(0xFFFFFFFF);
const appGreyColor = const Color(0xFF78909c);
const appRedColor = const Color(0xFFEF5350);

TimeOfDay now = TimeOfDay.now();
TimeOfDay releaseTime = TimeOfDay(hour: 15, minute: 0); // 3:00pm
TimeOfDay roomBooked = TimeOfDay.fromDateTime(DateTime.parse('2018-10-20 16:30:04Z'));