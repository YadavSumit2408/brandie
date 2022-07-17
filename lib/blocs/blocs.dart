import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:brandie/blocs/repository.dart';
import 'blocs_event.dart';
import 'blocs_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  Repository repository;
  CharactersBloc({required this.repository});
  @override
  CharactersState get initialState => CharactersInitial();

  @override
  Stream<CharactersState> mapEventToState(
      CharactersEvent event,
      ) async* {

    if(event is AppStarted)
    {
      yield Loading();
      var characters = await repository.fetchAllCharacters();
      yield LoadCharacters(characters:characters);
    }

  }
}