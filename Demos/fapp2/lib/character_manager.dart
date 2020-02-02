import 'package:flutter/material.dart';

import './characters.dart';

class CharacterManager extends StatefulWidget
{
  final String startingCharacter;

  CharacterManager({this.startingCharacter});

  @override
  State<StatefulWidget> createState() {
    
    return _CharacterManagerState();
  }
  
}

class _CharacterManagerState extends State<CharacterManager>
{
  List<String> _characters = []; // old list ['Kaneki Ken',];
  
  @override
  void initState() {
    if(widget.startingCharacter!=null)
    {
      _characters.add(widget.startingCharacter);
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Column(children: [ Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
              onPressed:  () 
              {
                setState(() { // set state re-renders the build method
                  _characters.add('Centipede'); 
                });
                print("Button pressed : "+_characters.toString());
              },
              child: Text('Add Character'),
            ),
            )
            , Expanded(child: Characters(_characters),)
            ]);
  }
}