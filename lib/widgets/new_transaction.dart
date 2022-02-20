import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();
  final Function addTransaction;
  NewTransaction(this.addTransaction);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                controller: titleControler,
                onChanged: (value) {
                  print(titleControler.text);
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                controller: amountControler,
                onChanged: (value) {
                  print(amountControler.text);
                },
              ),
              TextButton(
                onPressed: () {
                  addTransaction(
                    titleControler.text,
                    double.parse(amountControler.text),
                  );
                },
                child: Text('Add Transaction'),
                style: TextButton.styleFrom(
                  primary: Colors.purple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
