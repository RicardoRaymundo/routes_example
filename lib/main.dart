import 'package:flutter/material.dart';

import 'main_page.dart';
import 'example2/2_first_screen.dart';
import 'example2/2_second_screen.dart';
import 'not_found_page.dart';
import 'switch_example/switch_page_a.dart';
import 'switch_example/switch_main_page.dart';
import 'slide_right_route.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: 'mainPage',
    routes: {
      'mainPage': (context) => MainPage(),
      // When navigating to the "/" route, build the FirstScreen widget.
      '/ex2first': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/ex2second': (context) => SecondScreen(),
      //'/switchPageA': (context) => SwitchPageA(),
      '/switchMainPage': (context) => SwitchMainPage(),

    },
    onUnknownRoute: ((RouteSettings setting) {
      String unknownRoute = setting.name ;
      print('rota desconhecida');
      print(unknownRoute);
      print(setting);
      return  MaterialPageRoute(
          builder: (context) => NotFoundPage()
      );
    }),
    onGenerateRoute: (RouteSettings settings) {
      switch (settings.name) {
        case '/switchMainPage':
          return SlideRightRoute(widget:SwitchMainPage());
          break;
        case '/switchPageA':
          return SlideRightRoute(widget:SwitchPageA());
          break;

      }
    },
  ));
}
