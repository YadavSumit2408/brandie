import 'package:brandie/screens/home.dart';
import 'package:brandie/screens/profile.dart';
import 'package:brandie/screens/reel.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  runApp(const MyApp());
}
void initState(){

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex=0;
  PageController _pageController=PageController(initialPage: 0);
  final _bottomNavigationBarItems=[
    BottomNavigationBarItem(label:"", icon:Image.asset("assets/flame.png",width: 30,height: 24,fit:BoxFit.cover,),),
    BottomNavigationBarItem(label:"", icon:Image.asset("assets/b_logo.png",width: 30,height: 24,fit:BoxFit.fill,),),
    BottomNavigationBarItem(label:"", icon:Icon(Icons.person,size: 24,),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Image.asset('assets/brandie_logo.png', fit: BoxFit.cover),
      ),
      body:PageView(
        controller: _pageController,
        onPageChanged: (newIndex){
          setState((){
            _currentIndex=newIndex;
          });
        },
        scrollDirection: Axis.horizontal,
        children: const[
          reel(),
          home(),
          profile()
        ],
      ),
      bottomNavigationBar: SizedBox(
          height:54,
          child:BottomNavigationBar(items: _bottomNavigationBarItems,
          currentIndex: _currentIndex,
          onTap: (index){
            _pageController.animateToPage(index, curve: Curves.ease, duration: Duration(milliseconds: 500));
          },
          backgroundColor: Colors.green,
      type: BottomNavigationBarType.fixed,)),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
