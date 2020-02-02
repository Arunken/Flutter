import 'package:flutter/material.dart';

import './pages/character.dart';

class Characters extends StatelessWidget {
  final List<String> characters;

  Characters(this.characters);

  @override
  Widget build(BuildContext context) {
    //listview renders everything even if they are out of the view.
    //This isn't an efficient way to render items that are much large in number and can cause overhead.
    // return ListView(children: characters.map((element) => Card(
    //           child: Column(
    //             children: <Widget>[
    //               Image.asset(
    //                 'assets/kaneki.jpg',
    //                 scale: 1,
    //                 height: 100,
    //                 width: 720,
    //               ),
    //               Text(element)
    //             ],
    //           ),
    //         )).toList(),);

    Widget _buildCharacters(BuildContext context, int index) {
      return Card(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/kaneki.jpg',
              scale: 1,
              height: 100,
              width: 720,
            ),
            Text(characters[index]),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Details"),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => CharacterPage(),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    // listview.builder will render items that are to be visible on the go and destroys any view that isn't need to be visible.
    Widget widget = Center(child: Text("No products found"));
    if (characters.length > 0) {
      widget = ListView.builder(
        itemBuilder: _buildCharacters,
        itemCount: characters.length,
      );
    }
    return widget;
  }
}
