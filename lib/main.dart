import 'package:flutter/material.dart';

import './dummy_data.dart';
import './models/octopus.dart';
import './screens/category_octopus_screen.dart';
import './screens/home_screen.dart';
import './screens/octopus_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _initialeFilter = {
    "isGlutenFree": false,
    "isVegan": false,
    "isVegetarian": false,
    "isLactoseFree": false,
  };

  List<Octopus> _avalaibleMeals = DUMMY_OCTOPUS;
  List<Octopus> _faouriteMeals = [];

  void _setFilteres(Map<String, bool> updatedFilter) {
    setState(() {
      _initialeFilter = updatedFilter;
      _avalaibleMeals = DUMMY_OCTOPUS.where((meal) {
        if (!meal.isGlutenFree && _initialeFilter["isGlutenFree"]) {
          return false;
        }
        if (!meal.isLactoseFree && _initialeFilter["isLactoseFree"]) {
          return false;
        }
        if (!meal.isVegan && _initialeFilter["isVegan"]) {
          return false;
        }
        if (!meal.isVegetarian && _initialeFilter["isVegetarian"]) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  bool _isFaourite(Octopus meal) {
    if (_faouriteMeals.contains(meal)) {
      return true;
    } else {
      return false;
    }
  }

  void _toggleFaourites(Octopus meal) {
    setState(() {
      if (_faouriteMeals.contains(meal)) {
        _faouriteMeals.remove(meal);
      } else {
        _faouriteMeals.add(meal);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //final mq = MediaQuery.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '8 Recipes for Octopus',
      theme: ThemeData(
        fontFamily: "Poppins",
        primaryColor: Color(0xFFE50914),
        accentColor: Color(0xFFE50914),
      ),
      routes: {
        '/': (_) => HomeScreen(_faouriteMeals),
        CategoryOctopusScreen.routeName: (_) =>
            CategoryOctopusScreen(_avalaibleMeals),
        OctopusDetailScreen.routName: (_) =>
            OctopusDetailScreen(_toggleFaourites, _isFaourite),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => HomeScreen(_faouriteMeals),
        );
      },
    );
  }
}
