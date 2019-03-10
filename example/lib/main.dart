import 'package:flutter/material.dart';

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
/*
  final List<TitledBottomNavigationBarItem> items = [
    TitledBottomNavigationBarItem(title: 'Home', icon: Icons.home),
    TitledBottomNavigationBarItem(title: 'Search', icon: Icons.search),
    TitledBottomNavigationBarItem(title: 'Bag', icon: Icons.card_travel),
    TitledBottomNavigationBarItem(title: 'Orders', icon: Icons.shopping_cart),
    TitledBottomNavigationBarItem(title: 'Profile', icon: Icons.person_outline),
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titled Bottom Bar"),
      ),
//      bottomNavigationBar: TitledBottomNavigationBar(
//        items: items,
//      ),
    );
  }
}
