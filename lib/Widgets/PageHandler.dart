import 'package:flutter/material.dart';
import 'package:portfolio/Navbar/Navbar.dart';
import 'package:portfolio/Sections/ExperienceSection.dart';
import 'package:portfolio/Sections/IntroductionSection.dart';

class PageHandler extends StatelessWidget {
  PageHandler({this.pageIndex = 0});

  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    List<Widget> screens = [
      IntroductionSection(),
      ExperienceSection()
    ];
    return Scaffold(
      body: Container(
        height: screenSize.height,
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
                child: screens[this.pageIndex]
              )
            ],
          ),
        ),
      ),
    );
  }
}