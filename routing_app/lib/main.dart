import 'package:flutter/material.dart';
import 'package:routing_app/route_genrator.dart';

void main() {
  runApp(MyApp());
}

/**
 * Routing from basics to advance
 * when ever we wanted to route between pages the most basic way of doing this
 * is by just use the MaterialPageRoute() Method and it's not recommeded for
 * real apps since it gets missey really fast and doesn't support securety
 * between pages
 */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenrator.genrateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('press to navigate to second page'),
            RaisedButton(onPressed: () {
              Navigator.of(context).pushNamed('/second', arguments: 'hi there from home Page');
            })
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;
  SecondPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('the data below comes from the home page passed to here'),
            Text('${data.toUpperCase()}'),
            RaisedButton(
                child: Text('pop'),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
    );
  }
}
