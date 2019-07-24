import 'package:flutter/material.dart';

import 'example1/1_first_route.dart';
import 'example3/3_todo_main.dart';
import 'example4/4_home_screen.dart';
import 'example5/5_hero_app.dart';
import 'example2/2_second_screen.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Exemplo 1: Basico'),
              onPressed: () {
                print(Navigator.canPop(context));
                print(Navigator.maybePop(context));
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstRoute()),
                );
              },
            ),
            RaisedButton(
              child: Text('Exemplo 2: Rotas Nomeadas'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => SecondScreen()),
                  ModalRoute.withName('/'),
                );
              },
            ),
            RaisedButton(
              child: Text('Exemplo 3: lista'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoMain()),
                );
              },
            ),
            RaisedButton(
              child: Text('Exemplo 4: return data'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourHomeScreen()),
                );
              },
            ),
            RaisedButton(
              child: Text('Exemplo 4: return data'),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (BuildContext context) => FiveHeroApp()));
              },
            ),
            RaisedButton(
              child: Text('not found exemplo'),
              onPressed: () {
                Navigator.pushNamed(context, '/AAAAA');
              },
            ),
            RaisedButton(
              child: Text('transicao animada'),
              onPressed: () {
                Navigator.pushNamed(context, '/switchMainPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
