// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: transactions.isEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'No transactions added yet !!!',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, idx) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.all(8.0),
                        child: Text(
                          '${transactions[idx].amount.toStringAsFixed(2)} Р',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Theme.of(context).primaryColor),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactions[idx].title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            DateFormat.yMMMd().format(transactions[idx].date),
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: transactions.length,
              // children: transactions
              //     .map(
              //       (tx) => Card(
              //         child: Row(
              //           children: [
              //             Container(
              //               padding: EdgeInsets.all(8.0),
              //               margin: EdgeInsets.all(8.0),
              //               child: Text(
              //                 '${tx.amount} Р',
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.bold, fontSize: 20.0),
              //               ),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(4.0),
              //                 color: Colors.lightBlue,
              //               ),
              //             ),
              //             Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   tx.title,
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.bold, fontSize: 16.0),
              //                 ),
              //                 Text(
              //                   DateFormat.yMMMd().format(tx.date),
              //                   style: TextStyle(fontSize: 12.0, color: Colors.grey),
              //                 ),
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //     )
              //     .toList(),
            ),
    );
  }
}
