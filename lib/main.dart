import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hanabi Mobile',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Hanabi mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget _makeRemainingCardsRow(Color color) {
    return Row(

      children: <Widget>[
        Text("1",style: TextStyle(color: color),),
        Text("1",style: TextStyle(color: color),),
        Text("1",style: TextStyle(color: color),),
        Text("2",style: TextStyle(color: color),),
        Text("2",style: TextStyle(color: color),),
        Text("3",style: TextStyle(color: color),),
        Text("3",style: TextStyle(color: color),),
        Text("4",style: TextStyle(color: color),),
        Text("4",style: TextStyle(color: color),),
        Text("5",style: TextStyle(color: color),),
      ],
    );
  }

  Widget _remainingCardsRow() {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              _makeRemainingCardsRow(Colors.red),
              _makeRemainingCardsRow(Colors.blue),
              _makeRemainingCardsRow(Colors.green),
              _makeRemainingCardsRow(Colors.yellow),
              _makeRemainingCardsRow(Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _otherPlayersAndPlayedCardsRow() {
    return Row(
      children: <Widget>[Text("_otherPlayersAndPlayedCardsRow")],
    );
  }

  Widget _myCardsRow() {
    return Row(
      children: <Widget>[Text("_myCardsRow")],
    );
  }

  Widget _bottomNavigationBar() {
    return Row(
      children: <Widget>[Text("_bottomNavigationBar")],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _remainingCardsRow(),
            _otherPlayersAndPlayedCardsRow(),
            _myCardsRow(),
            _bottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
