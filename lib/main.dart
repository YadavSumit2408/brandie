// @dart=2.9
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brandie/screens/home1.dart';
import 'package:flutter/material.dart';
import 'blocs/blocs_event.dart';
import 'blocs/blocs_state.dart';
import 'blocs/repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Repository repository = Repository();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CharactersBloc>(
            create: (context)=>CharactersBloc(repository: repository)..add(AppStarted()),
          )],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home:BlocBuilder<CharactersBloc,CharactersState>(
              builder: (context,state){
                return Home();
              },)
        )
    );
  }
}





