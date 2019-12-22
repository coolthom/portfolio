import 'package:flutter/material.dart';
import '../Widgets/IconRow.dart';

class KnowledgeSection extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 110),
          child: new Image.asset(
            "assets/images/PlanningPhase.png",
            width: width,
          ),
        ),
      ),
      Container(
        width: width,
        child: Column(
          children: <Widget>[
            Text(
              "Knowledge",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconRow(
                    images: [
                      "assets/icons/FlutterIcon.png",
                      "assets/icons/AndroidIcon.png",
                      "assets/icons/AngularIcon.png"
                    ],
                  ),
                  IconRow(
                    images: [
                      "assets/icons/CssIcon.png",
                      "assets/icons/HTMLIcon.png",
                      "assets/icons/JavascriptIcon.png"
                    ],
                    spacerSize: 0,
                  ),
                  IconRow(
                    images: [
                      "assets/icons/DockerIcon.png",
                      "assets/icons/CSharpIcon.png",
                      "assets/icons/DotnetIcon.png"
                    ],
                  ),
                  IconRow(
                    images: [
                      "assets/icons/LinuxIcon.png",
                      "assets/icons/PythonIcon.png",
                      "assets/icons/TypescriptIcon.png"
                    ],
                    spacerSize: 0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
