import 'package:flutter/material.dart';

import 'Sections/IntroductionSection.dart';
import 'Navbar/Navbar.dart';
import 'Sections/KnowledgeSection.dart';

//https://www.vecteezy.com/free-vector/programming"
//https://www.vecteezy.com/free-vector/development"

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFA43931), Color(0xFF1D4350)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Column(
                  children: <Widget>[IntroductionSection(), KnowledgeSection()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
