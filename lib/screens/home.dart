import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

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
           child: const Text("Call API Data"),
            onPressed: () { apiData(); },
         ),
       )
      :Padding(
        padding: const EdgeInsets.all(8.0),
           child:ListView.builder(
             itemCount: characters.length,
               itemBuilder: (context, index){
               return Card(
                 child:ListTile(
                   leading: Image(
                     image:NetworkImage(
                       characters[index]["image"],
                     )
                   ),
                   title:Text(
                   "ID: ${characters[index]["id"]}",
                   ),
                   subtitle:Text(
                    "Name: ${characters[index]["name"]}" ,
                   ),
                    trailing: SizedBox(
                      width: 80,
                        height: 50,
                        child:Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.greenAccent,
                            ),
                            borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
                            child: Text(
                              characters[index]["status"],
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                            ),
                          ),
                        ))
                 ));
               })
    ));
  }
  void apiData()async {
    setState(() {
      _loading = true;
    }
    );
    HttpLink link = HttpLink("https://rickandmortyapi.com/graphql");
    GraphQLClient client = GraphQLClient(link: link,
        cache: GraphQLCache(
          store: HiveStore(),
        ));

    QueryResult queryResult = await client.query(
      QueryOptions(
        document: gql(
          """query {
        characters(page: 2,  filter: { name: "rick"}) {
        results {
        id
        name
        image
        status
        }
        }
        }""",
        ),
      ),
    );
    setState(() {
      characters = queryResult.data!["characters"]["results"];
      _loading = false;
    }
    );
  }



  }




