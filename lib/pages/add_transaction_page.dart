import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTransactionPage extends StatelessWidget {
  const AddTransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add transaction"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Summa",
              ),
            ),
            const SizedBox(height: 14),
            const TextField(
              maxLines: 3,
              minLines: 2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Description",
              ),
            ),
            const SizedBox(height: 14),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Category"),
                  Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            ),
            const SizedBox(height: 14),
            CupertinoButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {},
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
