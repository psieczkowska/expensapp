import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final String spendingAmount;
  final double spendingPercentage;

  const ChartBar(this.label, this.spendingAmount, this.spendingPercentage);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text('\$$spendingAmount'),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                color: Color.fromRGBO(220, 220, 220, 1),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            FractionallySizedBox(
              heightFactor: spendingPercentage,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ]),
        ),
        SizedBox(
          height: 5,
        ),
        Text(label),
      ],
    );
  }
}
