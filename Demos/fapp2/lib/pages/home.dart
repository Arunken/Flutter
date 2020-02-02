import 'package:flutter/material.dart';

import '../character_manager.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
          appBar: AppBar(
            title: Text('Character List'),
          ),
          body: CharacterManager(),
          );
  }
}