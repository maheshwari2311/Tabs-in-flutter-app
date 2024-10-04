import 'package:flutter/material.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/second.dart';
import 'package:flutter_application_1/third.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  TabBar getTabBar() {
    return const TabBar(
      tabs: [
        Tab(
          icon: Icon(
            Icons.favorite,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.adb,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.airport_shuttle,
          ),
        ),
      ],
    );
  }

  TabBarView getTabBarview(var tabs) {
    return TabBarView(
      children: tabs,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "tabs controller",
        ),
        backgroundColor: Colors.blue,
        bottom: getTabBar(),
      ),
      body: getTabBarview(
        <Widget>[
          const First(),
          const Second(),
          const Third(),
        ],
      ),
    );
  }
}
