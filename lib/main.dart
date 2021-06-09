import 'package:flutter/material.dart';
import 'transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 4000.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'order sushi',
      amount: 1238.0,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: Text('CHART!!!'),
            ),
            Card(
                child: Column(
              children: transactions
                  .map(
                    (tx) => Card(
                        child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            tx.amount.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.lightBlue,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              tx.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Text(
                              tx.date.toString(),
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    )),
                  )
                  .toList(),
            )),
          ],
        ));
  }
}
