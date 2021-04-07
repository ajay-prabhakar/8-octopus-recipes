import 'package:flutter/material.dart';

import '../models/octopus.dart';
import '../widgets/octopus_items.dart';

class CategoryOctopusScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  final List<Octopus> availableCategories;

  CategoryOctopusScreen(this.availableCategories);

  @override
  _CategoryOctopusScreenState createState() => _CategoryOctopusScreenState();
}

class _CategoryOctopusScreenState extends State<CategoryOctopusScreen> {
  String title;
  var isInitialised = false;
  List<Octopus> filteredCategories;

  @override
  void didChangeDependencies() {
    if (!isInitialised) {
      final arg =
          ModalRoute.of(context).settings.arguments as Map<String, Object>;
      title = arg['title'];
      final id = arg['id'];
      filteredCategories = widget.availableCategories.where((element) {
        return element.categories.contains(id);
      }).toList();
      isInitialised = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 17, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: "8 different recipes for ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'octopus 🥳🥳',
                        style: TextStyle(
                            color: Color(0xFFE50914),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height-80,
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                mainAxisSpacing: 12,
                crossAxisSpacing: 1,
              ),
              itemCount: filteredCategories.length,
              //physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return OctopusItems(
                  meal: filteredCategories[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
