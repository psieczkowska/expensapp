import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTransaction;
  NewTransaction(this.addTransaction);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleControler = TextEditingController();

  final amountControler = TextEditingController();

  void submitData() {
    final enteredTitle = titleControler.text;
    final enteredAmount = double.parse(amountControler.text);
    if (enteredAmount <= 0 || enteredTitle.isEmpty) {
      return;
    }
    widget.addTransaction(
      enteredTitle,
      enteredAmount,
    );

    Navigator.of(context).pop();
  }

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
                onSubmitted: (_) => submitData,
                onEditingComplete: submitData,
                onChanged: (value) {
                  print(titleControler.text);
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                controller: amountControler,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData,
                onEditingComplete: submitData,
                onChanged: (value) {
                  print(amountControler.text);
                },
              ),
              TextButton(
                onPressed: submitData,
                child: Text('Add Transaction'),
                style: TextButton.styleFrom(
                  primary: Theme.of(context).primaryColorDark,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
