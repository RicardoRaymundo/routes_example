import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            print(Navigator.canPop(context));
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}