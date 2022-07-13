import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,
    child:Center(
        child:Text("This is your Profile Page",style: TextStyle(color:Colors.black),)));
  }
}
