import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Buttons'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(25),
                  child: TextButton(
                    child: Text('Sign Up', style: TextStyle(fontSize: 20.0)),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: FloatingActionButton(
                    child: Icon(Icons.navigation),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(
                      "Click Here",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
