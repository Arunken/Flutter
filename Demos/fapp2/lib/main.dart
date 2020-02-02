import 'package:flutter/material.dart';

import './character_manager.dart';

main() {
  runApp(MyApp());
}

//or
//main() =>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true,//shows grid to position elements
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch:Colors.deepOrange,
        accentColor: Colors.deepPurpleAccent
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Character List'),
          ),
          body: CharacterManager(),
          ),
    ); // MaterialApp is the wrapper widget.
  }

}
