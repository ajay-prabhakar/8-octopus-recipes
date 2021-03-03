import 'package:flutter/material.dart';

import 'package:food_app/models/octopus.dart';
import 'package:food_app/screens/octopus_detail_screen.dart';

class OctopusItems extends StatelessWidget {
  final Octopus meal;

  OctopusItems({
    @required this.meal,
  });

  String get affordabilityText {
    switch (meal.affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Expensive';
        break;
      default:
        return 'Unknown';
    }
  }

  String get complexityText {
    switch (meal.complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      default:
        return 'Unknown';
    }
  }

  final roundedRectangle = RoundedRectangleBorder(
    borderRadius: BorderRadiusDirectional.circular(15),
  );

  void navigatingToMealsDetail(BuildContext context) {
    Navigator.of(context)
        .pushNamed(OctopusDetailScreen.routName, arguments: meal);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      onTap: () => navigatingToMealsDetail(context),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        shape: roundedRectangle,
        elevation: 5,
        child: Column(
          children: <Widget>[
            buildImage(),
            buildTitle(),
            eproxTime(context),
            //buildRating(),
            //buildPriceInfo(context),
          ],
        ),
      ),
    );
  }

  Widget buildImage() {
    return Card(
      elevation: 3,
      shape: roundedRectangle,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Image.network(
          meal.imageUrl,
          fit: BoxFit.fill,
          width: double.infinity,
          height: 120,
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
      ),
    );
  }

  Widget buildTitle() {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(top: 12.0, left: 8, right: 16),
      child: Text(
        meal.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget eproxTime(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.schedule,
              color: Colors.grey,
            ),
            SizedBox(
              height: 5,
            ),
            Text("${meal.duration}"),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.attach_money,
              color: Colors.grey,
            ),
            SizedBox(
              height: 5,
            ),
            Text(affordabilityText),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.work,
              color: Colors.grey,
            ),
            SizedBox(
              height: 5,
            ),
            Text(complexityText),
          ],
        ),
      ],
    );
  }
}
