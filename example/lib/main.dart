import 'package:flutter/material.dart';

import 'package:titled_navigation_bar/titled_navigation_bar.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Titled Bar',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(title: 'Home', icon: Icons.home),
    TitledNavigationBarItem(title: 'Search', icon: Icons.search),
    TitledNavigationBarItem(title: 'Bag', icon: Icons.card_travel),
    TitledNavigationBarItem(title: 'Orders', icon: Icons.shopping_cart),
    TitledNavigationBarItem(title: 'Profile', icon: Icons.person_outline),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titled Bottom Bar"),
      ),
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: (index){
          print("Selected Index: $index");
        },
        items: items,
        indicatorColor: Colors.blue,
      ),
    );
  }
}
