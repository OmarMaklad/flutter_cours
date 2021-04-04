import 'package:flutter/material.dart';
import 'package:flutter_cours/widget/customButton.dart';
import 'package:flutter_cours/widget/customFeild.dart';

class VerificationView extends StatelessWidget {
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
      body: ListView(
      children: [
        Image.asset("assets/images/vaCode.png"),
        Text("fghjk"),
        Text("fghjk"),
        CustomFeild(hint: "code", icon: Icons.code),
        CustomButton(onPressed: (){}, title: "Done")

      ],
      ),
    );
  }
}
