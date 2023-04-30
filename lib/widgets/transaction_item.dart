import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text("Көңіл көтеру"),
              Expanded(child: SizedBox()),
              Text(
                "-1\$",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
          const Text("Кофе сатып алдым"),
        ],
      ),
    );
  }
}
