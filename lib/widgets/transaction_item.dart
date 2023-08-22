import 'package:altyn/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {

  const TransactionItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Coffee",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Expanded(child: SizedBox()),
              Builder(builder: (_) {
                if (transaction.type == TransactionType.expense) {
                  return Text(
                    "+${transaction.sum}\$",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  );
                }

                return Text(
                  "-${transaction.sum}\$",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                );
              }),
            ],
          ),
          const Text("Description"),
        ],
      ),
    );
  }
}
