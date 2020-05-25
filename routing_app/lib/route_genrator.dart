import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routing_app/main.dart';

class RouteGenrator {
  static Route<dynamic> genrateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => MyHomePage());
        break;
      case '/second':
        if (args is String) {
          return MaterialPageRoute(
              builder: (context) => SecondPage(
                    data: args,
                  ));
        }
        break;
      default:
        return MaterialPageRoute(builder: (_) => _errorPage());
    }
  }
}

/** 
 * its recommeded to have such an error pages on real apps and the perfect place for is just right here! 
 * */
class _errorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('404'),
    );
  }
}
