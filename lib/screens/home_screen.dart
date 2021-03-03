import 'package:flutter/material.dart';
import 'package:food_app/models/octopus.dart';

import './category_screen.dart';
import 'category_screen.dart';

class HomeScreen extends StatefulWidget {
  final List<Octopus> favouriteMeal;

  HomeScreen(this.favouriteMeal);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CategoryScreen());
  }
}
