import 'package:flutter/material.dart';
import 'package:food_app/models/octopus.dart';

class OctopusDetailScreen extends StatelessWidget {
  static const routName = '/meals-detail';
  final Function toogleFaourites;
  final Function isFaourites;

  OctopusDetailScreen(this.toogleFaourites, this.isFaourites);

  @override
  Widget build(BuildContext context) {
    final Octopus meal = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              meal.title,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: dishImage(meal.imageUrl),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: listTitle(context, "Ingredinets")),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: meal.ingredients.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(15),
                    ),
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        meal.ingredients[index],
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: "Poppins"),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: listTitle(context, 'Steps')),
            Container(
              child: ListView.builder(
                itemCount: meal.steps.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.black,
                      child: Text(
                        "#${index + 1}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(meal.steps[index],
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: "Poppins")),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: isFaourites(meal)
            ? Icon(Icons.favorite)
            : Icon(Icons.favorite_border),
        onPressed: () => toogleFaourites(meal),
      ),
    );
  }

  Widget dishImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      child: Image.network(
        url,
        fit: BoxFit.fill,
        width: double.infinity,
        height: 250,
        loadingBuilder: (context, Widget child, ImageChunkEvent progress) {
          if (progress == null) return child;
          return Padding(
              padding: EdgeInsets.all(10),
              child: CircularProgressIndicator(
                value: progress.expectedTotalBytes != null
                    ? progress.cumulativeBytesLoaded /
                        progress.expectedTotalBytes
                    : null,
              ));
        },
      ),
    );
  }

  Widget listOfItems(BuildContext context, Widget child) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      width: 400,
      height: 300,
      child: child,
    );
  }

  Widget listTitle(BuildContext context, String headline) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(headline,
          style: TextStyle(
              fontSize: 20,
              color: Color(0xFFE50914),
              fontWeight: FontWeight.bold)),
    );
  }
}
