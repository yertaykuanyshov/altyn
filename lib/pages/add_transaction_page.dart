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
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Summa",
                filled: true,
                fillColor: Colors.black12.withOpacity(0.03),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              maxLines: 3,
              minLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.black12.withOpacity(0.03),
                hintText: "Description (not required)",
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return Container();
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Category"),
                  Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: const Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
