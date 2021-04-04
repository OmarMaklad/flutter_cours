import 'package:flutter/material.dart';
import 'package:flutter_cours/widget/customButton.dart';
import 'package:flutter_cours/widget/customFeild.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.white,
       title: SizedBox(height:height*.07,child: Image.asset("assets/images/logo.png")),
       centerTitle: true,
       leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        actions: [
          Icon(Icons.flag,color: Colors.black,),
        ],
      ),
      body:Column(
        children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal:40,vertical: 20),
          child: Stack(
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    select=true;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(right:30),
                  height:height*.05 ,
                  width: height*.35,
                  decoration: BoxDecoration(
                      color: select==false?Colors.grey:Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black,width: 1)
                  ),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Doctor")),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    select=false;
                  });
                },
                child: Container(
                  height:height*.05 ,
                  width: height*.2,
                  decoration: BoxDecoration(
                      color:select==false?Colors.white:Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black,width: 1)
                  ),
                  child: Center(child: Text("Parent")),
                ),
              ),

            ],
          ),
        ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25,vertical: 5),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "user name",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.green,width: 1)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.purple,width: 2)
                ),

              ),
            ),
          ),
         CustomFeild(hint: "user name", icon: Icons.person),
         CustomFeild(hint: "password", icon: Icons.lock),
          CustomButton(onPressed: (){}, title: "Sign In")
      ],),
    );
  }
}
