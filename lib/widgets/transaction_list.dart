import 'package:altyn/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 30,
      separatorBuilder: (_, idx) {
        if (idx % 5 == 0) {
          return const Center(
            child: Text(
              "2023-08-14",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          );
        }

        return const SizedBox.shrink();
      },
      itemBuilder: (_, idx) {
        if (idx % 3 == 0) {
          return TransactionItem(
            transaction: Transaction(
              id: "1",
              sum: 2,
              date: "2023-10-21",
              type: TransactionType.income,
            ),
          );
        }

        return TransactionItem(
          transaction: Transaction(
            id: "1",
            sum: 6,
            date: "2023-10-21",
            type: TransactionType.expense,
          ),
        );
      },
    );
  }
}
