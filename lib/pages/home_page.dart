import 'package:altyn/models/transaction.dart';
import 'package:altyn/pages/add_transaction_page.dart';
import 'package:altyn/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amian"),
        actions: [
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 30,
        separatorBuilder: (_, idx) {
          if (idx % 5 == 0) {
            return Container(
              width: double.infinity,
              height: 30,
              color: Colors.black12.withOpacity(0.07),
              child: const Center(
                child: Text(
                  "2023-08-14",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
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
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const AddTransactionPage(),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chartArea),
            label: "Statistics",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gear),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}
