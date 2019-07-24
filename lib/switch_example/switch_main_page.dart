import 'package:flutter/material.dart';

class SwitchMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Page A'),
              onPressed: () {
                print(Navigator.canPop(context));
                print(Navigator.maybePop(context));
                Navigator.pushNamed(context, '/switchPageA');
              },
            ),
            RaisedButton(
              child: Text('Exemplo 2: Rotas Nomeadas'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/switchPageB');
              },
            ),
          ],
        ),
      ),
    );
  }
}
