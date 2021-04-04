import 'package:flutter/material.dart';
import 'package:flutter_cours/home/view.dart';
import 'package:flutter_cours/widget/customButton.dart';
import 'package:flutter_cours/widget/customFeild.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool select;
  int value=0;
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
      body:ListView(
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
          select==false?CustomFeild(hint: "baby name", icon: Icons.person):
          CustomFeild(hint: "Doctor name", icon: Icons.person),
          CustomFeild(hint: "user Name", icon: Icons.person),
          CustomFeild(hint: "email", icon: Icons.mail),
          CustomFeild(hint: "phone", icon: Icons.phone),
          CustomFeild(hint: "password", icon: Icons.lock),
          select==false?CustomFeild(hint: "date", icon: Icons.date_range):
          CustomFeild(hint: "Spici", icon: Icons.card_travel),
          Row(
            children: [
              RadioListTile(
                title: Text("male"),
                  value:1 ,
                  groupValue: value,
                  onChanged: (val){
                setState(() {
                  value=val;
                });
              }),
              RadioListTile(
                title: Text("Female"),
                  value: 2, groupValue: value, onChanged: (val){
              setState(() {
                value= val;
              });
              }),
            ],
          ),
          CustomButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeView()));
          }, title: "Sign Up")



        ],),
    );
  }
}
