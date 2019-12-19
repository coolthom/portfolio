import 'package:flutter/material.dart';

class IconRow extends StatelessWidget {
  IconRow({@required this.images, this.spacerSize = 80});

  final List<String> images;
  final double spacerSize;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return IconRowWidget(
              images: this.images, mobile: false, spacerSize: this.spacerSize);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return IconRowWidget(
              images: this.images, mobile: false, spacerSize: this.spacerSize);
        } else {
          return IconRowWidget(
              images: this.images, mobile: true, spacerSize: this.spacerSize);
        }
      },
    );
  }
}

class IconRowWidget extends StatelessWidget {
  IconRowWidget(
      {@required this.images, @required this.mobile, this.spacerSize = 80});

  final List<String> images;
  final bool mobile;
  double spacerSize;

  @override
  Widget build(BuildContext context) {
    double miscSpacerSize;
    if (mobile) {
      miscSpacerSize = 0;
      this.spacerSize = 0;
    } else {
      miscSpacerSize = 80;
    }
    return Wrap(
      children: <Widget>[
        SizedBox(
          width: this.spacerSize,
        ),
        Container(
          padding: EdgeInsets.all(7),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white),
          child: Image.asset(
            this.images[0],
            width: 80,
          ),
        ),
        SizedBox(
          width: miscSpacerSize,
        ),
        Container(
          padding: EdgeInsets.all(7),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white),
          child: Image.asset(
            this.images[1],
            width: 80,
          ),
        ),
        SizedBox(
          width: miscSpacerSize,
        ),
        Container(
          padding: EdgeInsets.all(7),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white),
          child: Image.asset(
            this.images[2],
            width: 80,
          ),
        ),
        SizedBox(
          width: miscSpacerSize,
        ),
      ],
    );
  }
}
