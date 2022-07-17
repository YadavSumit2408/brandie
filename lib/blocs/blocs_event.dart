import 'package:flutter/cupertino.dart';
export 'blocs.dart';

@immutable
abstract class CharactersEvent {}

class AppStarted extends CharactersEvent{}