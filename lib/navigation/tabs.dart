import 'package:flutter/material.dart';
class TabsExample extends StatelessWidget {
  const TabsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tabPages= <Widget>[
      const Center(child: Icon(Icons.cloud,size: 64,color: Colors.greenAccent)),
      const Center(child: Icon(Icons.gamepad,size: 64,color: Colors.blueAccent)),
      const Center(child: Icon(Icons.wallet,size: 64,color: Colors.yellowAccent))
    ];
    final _tabs= <Tab>[
      const Tab(icon: Icon(Icons.cloud),text: 'Tab1'),
      const Tab(icon: Icon(Icons.gamepad),text: 'Tab2'),
      const Tab(icon: Icon(Icons.wallet),text: 'Tab3')
    ];
    return DefaultTabController(
        length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Example"),
          backgroundColor: Colors.cyan,
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: _tabPages,
        ),
      ),
        );
  }
}
