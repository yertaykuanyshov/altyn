import 'package:flutter/material.dart';

class ChooseTransactionType extends StatefulWidget {
  const ChooseTransactionType({Key? key}) : super(key: key);

  @override
  State<ChooseTransactionType> createState() => _ChooseTransactionTypeState();
}

class _ChooseTransactionTypeState extends State<ChooseTransactionType> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MaterialButton(
          onPressed: () {},
          color: Colors.redAccent,
          elevation: 0,
          child: const Text(
            "Expence",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 20),
        MaterialButton(
          onPressed: () {},
          elevation: 0,
          child: const Text("Income"),
        ),
      ],
    );
  }
}
