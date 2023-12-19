import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';

class MacosUIGalleryApp extends StatelessWidget {
  const MacosUIGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosApp(
      title: 'macos_ui Widget Gallery',
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const WidgetGallery(),
    );
  }
}

class WidgetGallery extends StatefulWidget {
  const WidgetGallery({super.key});

  @override
  State<WidgetGallery> createState() => _WidgetGalleryState();
}

class _WidgetGalleryState extends State<WidgetGallery> {
  int pageIndex = 0;

  late final searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PlatformMenuBar(
      menus: [],
      child: MacosWindow(
        sidebar: Sidebar(
          minWidth: 200,
          builder: (context, scrollController) {
            return SidebarItems(
              currentIndex: pageIndex,
              onChanged: (i) {
                setState(() => pageIndex = i);
              },
              scrollController: scrollController,
              itemSize: SidebarItemSize.large,
              items: const [
                SidebarItem(
                  label: Text('Buttons'),
                  leading: MacosImageIcon(
                    AssetImage('assets/sf_symbols/button_programmable_2x.png'),
                  ),
                ),
                SidebarItem(
                  label: Text('Indicators'),
                  leading: MacosImageIcon(
                    AssetImage(
                      'assets/sf_symbols/lines_measurement_horizontal_2x.png',
                    ),
                  ),
                ),
              ],
            );
          },
          bottom: const MacosListTile(
            leading: MacosIcon(CupertinoIcons.profile_circled),
            title: Text('Tim Apple'),
            subtitle: Text('tim@apple.com'),
          ),
        ),
        endSidebar: Sidebar(
          startWidth: 200,
          minWidth: 200,
          maxWidth: 300,
          shownByDefault: false,
          builder: (context, _) {
            return const Center(
              child: Text('End Sidebar'),
            );
          },
        ),
        child: const Text("OK"),
      ),
    );
  }
}
