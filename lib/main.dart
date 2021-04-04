import 'package:flutter/material.dart';
import 'package:flutter_cours/Screens/splash/view.dart';
import 'package:flutter_cours/home/view.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
