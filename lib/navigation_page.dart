import 'package:flutter/material.dart';
import 'package:flutter_basic_app/navigation/bottom_navigation_bar.dart';
import 'package:flutter_basic_app/navigation/bottom_sheet.dart';
import 'package:flutter_basic_app/navigation/bottom_tab.dart';
import 'package:flutter_basic_app/navigation/dialogs.dart';
import 'package:flutter_basic_app/navigation/draggable_scrollable_sheet.dart';
import 'package:flutter_basic_app/navigation/navigation_drawer.dart';
import 'package:flutter_basic_app/navigation/page_selector.dart';
import 'package:flutter_basic_app/navigation/routes.dart';
import 'package:flutter_basic_app/navigation/tabs.dart';
import 'package:flutter_basic_app/preview_page.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void gotoPreview(String title, Widget previewWidget, String filePath){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext ctx)=>  PreviewPage(
              title: title,
              previewWidget: previewWidget,
              filePath: filePath,
            ),
          )
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.navigation_outlined),
            title: const Text("Tabs"),
            onTap: (){
              gotoPreview("Tabs", const TabsExample(), "../lib/navigation/tabs.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.navigation_outlined),
            title: const Text("Dialogs"),
            onTap: (){
              gotoPreview("Dialogs", const DialogsExample(), "../lib/navigation/dialogs.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.navigation_outlined),
            title: const Text("Routes"),
            subtitle: const Text("jumping between pages"),
            onTap: (){
              gotoPreview("Routes", const RoutesExample(), "../lib/navigation/routes.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.navigation_outlined),
            title: const Text("Navigation Drawer"),
            onTap: (){
              gotoPreview("Navigation Drawer", const NavigationDrawerExample(), "../lib/navigation/navigation_drawer.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.navigation_outlined),
            title: const Text("Bottom Sheet"),
            onTap: (){
              gotoPreview("Bottom Sheet", const BottomSheetExample(), "../lib/navigation/bottom_sheet.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.navigation_outlined),
            title: const Text("Bottom Tab Bar"),
            onTap: (){
              gotoPreview("Bottom Tab Bar", const BottomTabBarExample(), "../lib/navigation/bottom_tab.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.navigation_outlined),
            title: const Text("Bottom Navigation Bar"),
            onTap: (){
              gotoPreview("Bottom Navigation Bar", const BottomNavigationBarExample(), "../lib/navigation/bottom_navigation_bar.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.navigation_outlined),
            title: const Text("Page Selector"),
            onTap: (){
              gotoPreview("Page Selector", const PageSelectorExample(), "../lib/navigation/page_selector.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.navigation_outlined),
            title: const Text("Draggable Scrollable Sheet"),
            onTap: (){
              gotoPreview("Draggable Scrollable Sheet", const DraggableScrollableSheetExample(), "../lib/navigation/draggable_scrollable_sheet.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}