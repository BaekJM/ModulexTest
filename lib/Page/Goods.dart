import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:modulex/module/AppbarPage.dart';

class Goods_Mode extends StatefulWidget {
  const Goods_Mode({Key? key}) : super(key: key);

  @override
  State<Goods_Mode> createState() => _Goods_ModeState();
}

class _Goods_ModeState extends State<Goods_Mode> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Primary and secondary TabBar'),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'Flights',
                icon: Icon(Icons.flight),
              ),
              Tab(
                text: 'Trips',
                icon: Icon(Icons.luggage),
              ),
              Tab(
                text: 'Explore',
                icon: Icon(Icons.explore),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NestedTabBar('Flights'),
            NestedTabBar('Trips'),
            NestedTabBar('Explore'),
          ],
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;



  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Overview'),
            Tab(text: 'Specifications'),
            Tab(text: 'Specifications1'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(16.0),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('Number2')),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('Number3')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
