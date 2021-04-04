
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Home Page",style:TextStyle(color: Colors.white,fontSize:24,fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                  child: Text("Hala Ayoub",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Omar"),
                Text("Omar"),
                Text("Omar"),
                Text("Omar"),
              ],
            ),
          ),
          ListTile(
            title: Text("HALA"),
             leading: Icon(Icons.send),
            subtitle: Text("omar"),
          ),
          ListTile(
            title: Text("HALA"),
             leading: Icon(Icons.send),
            subtitle: Text("omar"),
          ),
          ListTile(
            title: Text("HALA"),
             leading: Icon(Icons.send),
            subtitle: Text("omar"),
          ),
          Image.asset("assets/images/baby.png"),
          Image.asset("assets/images/baby.png"),
          Image.asset("assets/images/baby.png"),
          Image.asset("assets/images/baby.png"),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: FlatButton(onPressed: (){}, child: Text("Done"),color: Colors.red,height:50,
              padding:EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ) ,),
          )


        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
