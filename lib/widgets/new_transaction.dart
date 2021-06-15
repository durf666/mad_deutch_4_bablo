import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (val) {
              //   amountInput = val;
              //   // ToDO add text controllers (end of lesson 88)
              // }
            ),
            TextButton(
              onPressed: () {
                print(amountController.text);
              },
              child: Text('Add Transaction'),
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
