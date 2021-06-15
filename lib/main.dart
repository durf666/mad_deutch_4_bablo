import 'package:flutter/material.dart';
import 'package:mad_deutch_4_bablo/widgets/new_transaction.dart';
import 'package:mad_deutch_4_bablo/widgets/transaction_list.dart';
import 'models/transaction.dart';
import 'widgets/user_transactions.dart';

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
  final List<Transaction> transactions = [];
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
          children: <Widget>[UserTransactions()],
        ));
  }
}
