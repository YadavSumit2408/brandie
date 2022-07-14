import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:brandie/main.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<dynamic>characters=[];
  bool _loading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:_loading
           ?const CircularProgressIndicator()
           :characters.isEmpty
           ?Center(
         child:ElevatedButton(
           child: const Text("Call API Data")
         )
       )

    );

  }

  void apiData()async {

    GraphQLClient client = GraphQLClient(link: link,
        cache: GraphQLCache(
      store:HiveStore(),
    ));

    HttpLink link = HttpLink("https://rickandmortyapi.com/graphql");

    QueryResult queryResult =await client.query(
      QueryOptions(
          document:gql(
        """query{
        characters(page:2,  filter:{ name: "rick"}){
        results{
        id
        name
        image
        }
        }
        }""",
       )
    )
    );
    setState(){
      characters = queryResult.data!["characters"]["results"];
    }

  }
  }



