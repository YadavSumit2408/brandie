import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:brandie/main.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // List<dynamic>characters=[];
  // bool _loading=false;
  // void initState(){
  //   dataClass();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Column(
         children:  [
            SizedBox(
             height: 10,
           ),
           const Text("Brands",
           textAlign: TextAlign.center,
           style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black,)
           ),
           const SizedBox(
             height: 40,
           ),
           Row(
             children: [
               const SizedBox(
                 width: 20,
               ),
                Container(
                    height:150,
                    width:105,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    alignment: Alignment.center,
                    child:const Text("Display Brands Here",
                        textAlign: TextAlign.center,
                        style:TextStyle(color:Colors.white,fontSize: 10,fontWeight: FontWeight.bold))
                 ),
               const SizedBox(
                 width: 5,
               ),
               Container(
                   height:150,
                   width:105,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   alignment: Alignment.center,
                   child:const Text("Display Brands Here",
                       textAlign: TextAlign.center,
                       style:TextStyle(color:Colors.white,fontSize: 10,fontWeight: FontWeight.bold))
               ),
               const SizedBox(
                 width: 5,
               ),
               Container(
                   height:150,
                   width:105,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   alignment: Alignment.center,
                   child:const Text("Display Brands Here",
                       textAlign: TextAlign.center,
                       style:TextStyle(color:Colors.white,fontSize: 10,fontWeight: FontWeight.bold))
               ),
               const SizedBox(
                 width: 5,
               ),
             ],
           ),
           const SizedBox(
             height:40,
           ),
           const Text("Rewards",
               textAlign: TextAlign.left,
               style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black)
           ),
           const SizedBox(
             height:40,
           ),
           Row(
             children: [
               const SizedBox(
                 width: 20,
               ),
               Container(
                   height:150,
                   width:105,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   alignment: Alignment.center,
                   child:const Text("Display Rewards Here",
                       textAlign: TextAlign.center,
                       style:TextStyle(color:Colors.white,fontSize: 10,fontWeight: FontWeight.bold))
               ),
               const SizedBox(
                 width: 5,
               ),
               Container(
                   height:150,
                   width:105,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   alignment: Alignment.center,
                   child:const Text("Display Rewards Here",
                       textAlign: TextAlign.center,
                       style:TextStyle(color:Colors.white,fontSize: 10,fontWeight: FontWeight.bold))
               ),
               const SizedBox(
                 width: 5,
               ),
               Container(
                   height:150,
                   width:105,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   alignment: Alignment.center,
                   child:const Text("Display Rewards Here",
                       textAlign: TextAlign.center,
                       style:TextStyle(color:Colors.white,fontSize: 10,fontWeight: FontWeight.bold))
               ),
               const SizedBox(
                 width: 5,
               ),
             ],
           ),
           const SizedBox(
             height:20,
           ),
         ],
       )
    );
  }
  }

