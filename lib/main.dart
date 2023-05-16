import 'package:flutter/material.dart';
import 'package:flutter_basic_app/Layouts/Row_Column.dart';
import 'package:flutter_basic_app/Layouts/container.dart';
import 'package:flutter_basic_app/Lists/data_table.dart';
import 'package:flutter_basic_app/Lists/expansion_tile.dart';
import 'package:flutter_basic_app/Lists/list_tile.dart';
import 'package:flutter_basic_app/Lists/list_wheel_view.dart';
import 'package:flutter_basic_app/Lists/listview_builder.dart';
import 'package:flutter_basic_app/Lists/grid_list.dart';
import 'package:flutter_basic_app/Lists/reorderable_list.dart';
import 'package:flutter_basic_app/Lists/slidable_tile.dart';
import 'package:flutter_basic_app/Lists/swipe_to_dismiss.dart';
import 'package:flutter_basic_app/appbars/backdrop.dart';
import 'package:flutter_basic_app/appbars/basic_appbar.dart';
import 'package:flutter_basic_app/appbars/bottom_appbar.dart';
import 'package:flutter_basic_app/appbars/convex_appbar.dart';
import 'package:flutter_basic_app/appbars/hidable_bottom_bar.dart';
import 'package:flutter_basic_app/appbars/search_bar.dart';
import 'package:flutter_basic_app/appbars/sliver_appbar.dart';
import 'package:flutter_basic_app/home_page.dart';
import 'package:flutter_basic_app/navigation/routes.dart';
import 'package:flutter_basic_app/widgets/dropdown_button.dart';
import 'package:flutter_basic_app/widgets/gradient.dart';
import 'package:flutter_basic_app/widgets/stateful_widgets.dart';
import 'package:flutter_basic_app/widgets/text_form_field.dart';
import 'package:flutter_basic_app/widgets/button.dart';
import 'package:flutter_basic_app/widgets/dropdown_button.dart';
import 'package:flutter_basic_app/widgets/stateful_widgets.dart';
import 'package:flutter_basic_app/navigation_page.dart';
import 'package:flutter_basic_app/navigation/dialogs.dart';
import 'package:flutter_basic_app/navigation/tabs.dart';
import 'package:flutter_basic_app/navigation/navigation_drawer.dart';
import 'package:flutter_basic_app/navigation/bottom_sheet.dart';
import 'package:flutter_basic_app/navigation/bottom_navigation_bar.dart';
import 'package:flutter_basic_app/navigation/bottom_tab.dart';
import 'package:flutter_basic_app/navigation/draggable_scrollable_sheet.dart';
import 'package:flutter_basic_app/navigation/page_selector.dart';
import 'package:flutter_basic_app/async/future_builder.dart';
import 'package:flutter_basic_app/async/stream_builder.dart';
import 'package:flutter_basic_app/animations/hero.dart';
import 'package:flutter_basic_app/animations/opacity.dart';
import 'package:flutter_basic_app/animations/animated_icons.dart';
import 'package:flutter_basic_app/animations/animated_container.dart';
import 'package:flutter_basic_app/animations/animation_package.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      //initialRoute: RoutesExample.routeName,
      routes: {
        RoutesExample.routeName :(context) => const RoutesExample(),
      },
    );
  }

}




