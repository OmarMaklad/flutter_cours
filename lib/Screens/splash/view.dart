import 'package:flutter/material.dart';
import 'package:flutter_cours/Screens/login/view.dart';
import 'package:flutter_cours/Screens/signUp/view.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo.png"),
          Stack(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(_)=>LoginView()));
                },
                child: Container(
                  padding: EdgeInsets.only(right:30),
                  height:height*.065 ,
                  width: height*.35,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black,width: 1)
                  ),
                  child: Align(
                       alignment: Alignment.centerRight,
                      child: Text("Sign In")),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(_)=>SignUpView()));
                },
                child: Container(
                  height:height*.065 ,
                  width: height*.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black,width: 1)
                  ),
                  child: Center(child: Text("SignUp")),
                ),
              ),

            ],
          ),

        ],
      ) ,
    );
  }
}

