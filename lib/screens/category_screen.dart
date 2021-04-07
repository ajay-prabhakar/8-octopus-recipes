import 'package:flutter/material.dart';
import 'category_octopus_screen.dart';

class CategoryScreen extends StatelessWidget {
  BuildContext buildContext;

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 50, right: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                    height: 40, width: 40, child: Image.asset("images/me.png")),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Question for you",
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "What's better than ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  height: 2,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'octopus',
                      style: TextStyle(
                          color: Color(0xFFE50914),
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: ' recipe?'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage('images/jin.jpg')),
            SizedBox(height: 20),
            Text(
              "Answer for you",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "8 different recipes for ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  height: 2,
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
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getStartedButton(),
              ],
            ),
          ]),
    );
  }

  Widget getStartedButton() {
    return InkWell(
      onTap: () {
        navigatingToCategoryMealScreen(buildContext);
      },
      child: Container(
        height: 60,
        width: 180,
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 10, top: 10),
        decoration: BoxDecoration(
          color: Color(0xFFE50914),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          child: Text(
            "Get Started",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  void navigatingToCategoryMealScreen(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryOctopusScreen.routeName,
      arguments: {
        'title': "8 Octopus Recipes",
        'color': Colors.purple,
        'id': "c1",
      },
    );
  }
}
