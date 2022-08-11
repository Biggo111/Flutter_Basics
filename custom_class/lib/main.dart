import 'package:flutter/material.dart';
import 'quotes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QouteList(),
    );
  }
}
class QouteList extends StatefulWidget {

  @override
  State<QouteList> createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {

  List<Quotes>quotes=[
    Quotes(author: 'Oscar Wilde', text: 'Be yourself!'),
    Quotes(author: 'Biggo Routh', text: 'Timeeeeee!'),
    Quotes(author: 'Biggo Routh 2', text: 'karmaaaaaa!'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Custom Class Example'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: <Widget>[
            // quotes.map((quote){
            //   return Text(quote);  //Why is it not working???
            // }).toList(),
            //quotes.map((quote) => Text('${quote.text} - ${quote.author}')) why is it not working???
           ]
        ),
    );
  }
}