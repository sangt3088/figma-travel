import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/home/main_travel_page.dart';
import 'package:travel_figma_class/pages/signup_signin/begin_travel.dart';
import 'package:travel_figma_class/pages/signup_signin/forgot_password.dart';
import 'package:travel_figma_class/pages/signup_signin/login_travel.dart';
import 'package:travel_figma_class/pages/seeMoreHome/see_more_singer.dart';
import 'package:travel_figma_class/pages/seeMoreHome/see_more_travel.dart';
import 'package:travel_figma_class/pages/signup_signin/signup_travel.dart';
import 'package:travel_figma_class/pages/signup_signin/start1_travel.dart';
import 'package:travel_figma_class/pages/signup_signin/start2_travel.dart';
import 'package:travel_figma_class/pages/signup_signin/start3_travel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BeginTravel());
  }
}
