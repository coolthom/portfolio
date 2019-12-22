import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/PageHandler.dart';

//https://www.vecteezy.com/free-vector/programming"
//https://www.vecteezy.com/free-vector/development"

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
      '/': (context) => PageHandler(),
      '/introduction': (context) => PageHandler(),
      '/experience': (context) => PageHandler(pageIndex: 1,)
      },
      title: 'Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
    );
  }
}

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    @required WidgetBuilder builder,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
            builder: builder,
            maintainState: maintainState,
            settings: settings,
            fullscreenDialog: fullscreenDialog);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}