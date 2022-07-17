import 'package:graphql_flutter/graphql_flutter.dart';

import '../constants/constants.dart';
import '../services/services.dart';
import '../blocs/blocs.dart';
import 'model.dart';




class Repository{
  GraphQLClient _client = clientToQuery();
  String error= 'Something Went Wrong';

  Future<List<ApiModel>> fetchAllCharacters() async{
    QueryResult result = await _client.query(
        QueryOptions(
            document: gql(charactersGraphQL)
        )
    );

    if(!result.hasException)
    {
      List data = result.data!['characters']["results"];
      List<ApiModel> characters =[];
      data.forEach((e){
        characters.add(
            ApiModel(
                id: e["id"],
                name: e["name"],
                image:e["image"],
                status: e["status"]
            )
        );
      });
      return characters;
    }
    return Future.error(error);

  }

}