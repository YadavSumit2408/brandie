import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink httpLink = HttpLink(
  "https://rickandmortyapi.com/graphql",
);

GraphQLClient clientToQuery() {
  return GraphQLClient(
    cache: GraphQLCache(store:InMemoryStore()),
    link: httpLink,
  );
}