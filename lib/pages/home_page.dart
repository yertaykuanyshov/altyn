import 'package:altyn/pages/add_transaction_page.dart';
import 'package:altyn/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _hideController = ScrollController();
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();

    _hideController.addListener(() {
      if (_hideController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
          print("**** $_isVisible up");
        });
      }
      if (_hideController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
          print("**** $_isVisible down");
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          controller: _hideController,
          body: const TabBarView(
            children: [
              TransactionList(),
              Text("OK"),
            ],
          ),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                floating: true,
                snap: true,
                title: TabBar(
                  tabs: [
                    Tab(text: "Transactions"),
                    Tab(text: "Chart"),
                  ],
                ),
              ),
            ];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.plus),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const AddTransactionPage(),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedContainer(
        height: _isVisible ? 60 : 0,
        duration: const Duration(milliseconds: 100),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.listUl),
              label: "Category",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.gear),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}
