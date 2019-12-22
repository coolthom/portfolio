import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/PageHandler.dart';
import 'package:portfolio/Extensions/HoverExtensions.dart';

import '../main.dart';


class NavItem extends StatelessWidget {
  const NavItem({@required this.text, @required this.pageIndex});

  final String text;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    List<String> pages = [
      '/',
      '/experience',
      '/introduction'
    ];
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          NoAnimationMaterialPageRoute(builder: (context) => PageHandler(pageIndex: this.pageIndex,)),
        );
      },
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}