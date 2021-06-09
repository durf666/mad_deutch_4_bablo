import 'package:flutter/material.dart';
import 'transaction.dart';
import 'package:intl/intl.dart';

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

  String titleInput;
  String amountInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              child: Text('CHART!!!'),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (val) {
                        titleInput = val;
                        // ToDO add text controllers (end of lesson 88)
                      },
                    ),
                    TextField(
                        decoration: InputDecoration(labelText: 'Amount'),
                        onChanged: (val) {
                          amountInput = val;
                          // ToDO add text controllers (end of lesson 88)
                        }),
                    TextButton(
                      onPressed: () {},
                      child: Text('Add Transaction'),
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
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
                            '${tx.amount} Р',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.lightBlue,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tx.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Text(
                              DateFormat.yMMMd().format(tx.date),
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
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
