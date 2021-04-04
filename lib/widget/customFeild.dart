import 'package:flutter/material.dart';

class CustomFeild extends StatefulWidget {
  final String hint;
  final IconData icon;

  CustomFeild({@required this.hint,@required this.icon});
  @override
  _CustomFeildState createState() => _CustomFeildState();
}

class _CustomFeildState extends State<CustomFeild> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25,vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.hint,
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(widget.icon),
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
    );
  }
}
