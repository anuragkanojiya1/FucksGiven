import 'package:flutter/material.dart';
import 'package:fucksgiven/pages/Settings.dart';
import 'package:fucksgiven/pages/graph.dart';
import 'package:fucksgiven/pages/home.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex =0;
  final screens = [
    Home(),
    Graph(),
  ];
  List<String> title =[
    'F**** given',
    'Stats',
  ];

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(title[currentIndex].toString(),style: TextStyle(color: Colors. black,fontSize: 25)),
            elevation: 0,
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                icon:ImageIcon(
                  AssetImage("images/Settings.png"),
                  color:HexColor("#29A331"),
                ),
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()),
                );
                },
              )
            ],


          ),
          body:screens[currentIndex],

          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => setState(() {
              currentIndex=index;

            })  ,
            currentIndex: currentIndex,
            selectedItemColor:HexColor("#29A331"),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/homeicon.png"),
                ),
                label: 'Home',



              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("images/chart.png"),
                  ),
                  label: 'Chart'

              ),
            ],
          ),

        ),
      );
  }
}

