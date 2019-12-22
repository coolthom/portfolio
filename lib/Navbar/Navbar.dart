import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/NavItem.dart';
import 'package:portfolio/Extensions/HoverExtensions.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Portfolio",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                NavItem(
                  text: "Introduction",
                  pageIndex: 0,
                ),
                SizedBox(
                  width: 30,
                ),
                NavItem(
                  text: "Projects",
                  pageIndex: 0,
                ),
                SizedBox(
                  width: 30,
                ),
                NavItem(
                  text: "Experience",
                  pageIndex: 1,
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Color(0xFFA43931),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Contact",
                    style: TextStyle(color: Colors.white),
                  ),
                ).showCursorOnHover
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Portfolio",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NavItem(
                    text: "Introduction",
                    pageIndex: 0,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  NavItem(
                    text: "Projects",
                    pageIndex: 0,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  NavItem(
                    text: "Experience",
                    pageIndex: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
