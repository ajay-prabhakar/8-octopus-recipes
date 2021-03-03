import 'package:flutter/material.dart';

import '../screens/category_octopus_screen.dart';

class CategoryItems extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItems(this.title, this.color, this.id);

  void navigatingToCategoryMealScreen(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryOctopusScreen.routeName,
      arguments: {
        'title': title,
        'color': color,
        'id': id,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        navigatingToCategoryMealScreen(context);
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(),
          gradient: LinearGradient(
            colors: [color.withOpacity(0.5), color],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
      ),
    );
  }
}
