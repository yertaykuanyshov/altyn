import 'package:altyn/pages/add_transaction_page.dart';
import 'package:altyn/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:macos_ui/macos_ui.dart';

import 'desktop_home_page.dart';

class HomePage extends StatelessWidget {
  final _hideController = ScrollController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return const MacosUIGalleryApp();
        }

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
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
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
          bottomNavigationBar: BottomNavigationBar(
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
        );
      },
    );
  }
}
