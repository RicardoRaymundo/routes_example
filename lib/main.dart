import 'package:flutter/material.dart';

import 'main_page.dart';
import 'example2/2_first_screen.dart';
import 'example2/2_second_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      '/': (context) => MainPage(),
      // When navigating to the "/" route, build the FirstScreen widget.
      '/ex2first': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/ex2second': (context) => SecondScreen(),
    },
  ));
}
