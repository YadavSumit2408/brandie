import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/blocs_state.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  final _bottomNavigationBarItems=[
    BottomNavigationBarItem(label:"", icon:Image.asset("assets/flame.png",width: 30,height: 24,fit:BoxFit.cover,),),
    BottomNavigationBarItem(label:"", icon:Image.asset("assets/b_logo.png",width: 30,height: 24,fit:BoxFit.fill,),),
    const BottomNavigationBarItem(label:"", icon:Icon(Icons.person,size: 24,),),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
      centerTitle: true,
      backgroundColor: Colors.black,
      title: Image.asset('assets/brandie_logo.png', fit: BoxFit.cover),
    ),
      body: BlocBuilder<CharactersBloc,CharactersState>(
        builder: (context,state){
          if(state is Loading){
            return const Center(child: CircularProgressIndicator(color: Colors.green,),);
          }
          if(state is LoadCharacters){
            return ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: state.characters.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: Image(
                        image:NetworkImage(
                          state.characters[index].image,
                        )
                    ),
                    title: Text(state.characters[index].name,style: const TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(state.characters[index].id),
                      trailing: SizedBox(
                          width: 80,
                          height: 50,
                          child:Card(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.greenAccent,
                              ),
                              borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                            ),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(10.0,15.0,10.0,10.0),
                              child: Text(
                                state.characters[index].status,
                                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                              ),),
                          ))
                    );}
                );}
          return const Center(child:Text("Something Went Wrong"),);
        },
      ),
      bottomNavigationBar: SizedBox(
          height:54,
          child:BottomNavigationBar(items: _bottomNavigationBarItems,
            backgroundColor: Colors.green,
            type: BottomNavigationBarType.fixed,)),
    );
  }
}