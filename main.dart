import 'package:flutter/material.dart';
import 'package:btsapp/login_page.dart';
import 'package:btsapp/register_page.dart';
import 'package:btsapp/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  final routes=<String, WidgetBuilder>{
  LoginPage.tag:(context)=>LoginPage(),
  RegisterPage.tag:(context)=>RegisterPage(),
  HomePage.tag:(context)=>HomePage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: routes,

    );
  }
}

