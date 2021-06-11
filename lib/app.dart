import 'package:flutter/material.dart';
import 'package:watsapp_clone/screens/home.screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.teal[800],
        ),
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp clone',
        home: DefaultTabController(
          length: 4,
          child: HomeScreen(),
        ));
  }
}
