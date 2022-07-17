import 'package:flutter/cupertino.dart';
import 'model.dart';
export 'blocs.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}


class Loading extends CharactersState {}
class LoadCharacters extends CharactersState{
  List<ApiModel> characters;
  LoadCharacters({required this.characters});
}