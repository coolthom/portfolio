import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return IntroductionSectionWidget(
            containerHeight: constraints.maxHeight,
          );
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return IntroductionSectionWidget(
            containerHeight: constraints.maxHeight,
          );
        } else {
          return IntroductionSectionWidget(
            containerHeight: constraints.maxHeight,
          );
        }
      },
    );
  }
}

class IntroductionSectionWidget extends StatelessWidget {
  IntroductionSectionWidget({@required this.containerHeight});

  final double containerHeight;
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Thomas Claessens",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Electronics-ICT student at AP University College in Antwerp.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 110),
          child: new Image.asset(
            "assets/images/Dedicated.png",
            width: width,
          ),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
