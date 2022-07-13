import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class data {
   dataClass() async {
     HttpLink link = HttpLink("https://rickandmortyapi.com/graphql");
     GraphQLClient graph = GraphQLClient(
       // cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
       link: link,
       cache: GraphQLCache(
         store: HiveStore(),
       ),

     );
     QueryResult queryResult = await graph.query(
       QueryOptions(
           document: gql(
             """query {
        characters(page: 2, filter: { name:"rick"}){
        results {
        image
        name
        }
        }
        }""",
           )),
     );
   }
}