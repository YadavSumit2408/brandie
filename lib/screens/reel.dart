import 'package:flutter/material.dart';

class reel extends StatefulWidget {
  const reel({Key? key}) : super(key: key);

  @override
  State<reel> createState() => _reelState();
}

class _reelState extends State<reel> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green,
        child:Center(
            child:Text("This is your Feed Page",style: TextStyle(color:Colors.black),)));
  }
}
