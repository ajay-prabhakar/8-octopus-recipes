import 'package:flutter/material.dart';

import './models/category.dart';
import './models/octopus.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const DUMMY_OCTOPUS = const [
  Octopus(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Grilled Octopus with Ancho Chile Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2015%2F08%2F13%2Frecipe0915-xl-grilled-octopus-with-ancho-chile-sauce-2000.jpg',
    duration: 20,
    ingredients: [
      '2 tablespoons extra-virgin olive oil',
      'One cleaned octopus, head and tentacles separated',
      '3 shallots, thinly sliced',
      '3 garlic cloves, thinly sliced',
      '1 tablespoon sweet pimentón de la Vera (smoked paprika)',
      '2 cups dry sherry'
    ],
    steps: [
      'Preheat the oven to 300°. In a large enameled cast-iron casserole, heat the olive oil. Add half of the octopus and cook over moderately high heat, turning, until lightly browned all over, 3 to 5 minutes. Transfer to a plate. Repeat with the remaining octopus..',
      'Add the shallots and garlic to the casserole and cook over moderate heat, stirring, until lightly browned, about 2 minutes. Add the pimentón and cook, stirring, until fragrant, about 20 seconds. Carefully add the sherry and bring to a boil. Return the octopus to the casserole, cover and braise in the oven until very tender, about 1 hour and 30 minutes. Let the octopus cool completely in the liquid.',
      'In a medium saucepan, toast the chiles over moderate heat, turning, until fragrant and pliable, 2 to 3 minutes. Add the vinegar, honey and garlic and bring just to a simmer. Remove from the heat and let stand until the chiles are softened, about 20 minutes. Transfer to a blender and puree until smooth. With the machine on, gradually add the grapeseed oil until incorporated. Season the ancho chile sauce with salt.',
      'Remove the octopus from the liquid. Using a paper towel, wipe the purple skin off the tentacles, leaving the suckers intact. Cut the head in half. Discard the braising liquid.',
      'Light a grill or preheat a grill pan and brush with canola oil. Grill the octopus over high heat, turning, until lightly charred all over, about 4 minutes. Transfer to a baking sheet and immediately brush with some of the ancho chile sauce. Serve with the jicama salad, passing the remaining sauce at the table.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Octopus(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Octopus with Chorizo and Potatoes',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2015%2F09%2Frecipe0815-hd-octopus-with-chorizo-and-potatoes.jpg',
    duration: 10,
    ingredients: [
      '1 onion, coarsely chopped',
      '3 bay leaves',
      '1 3/4 pounds octopus tentacles',
      '3/4 pound potatoes, peeled and cut into 1/2-inch dice',
      '3 tablespoons extra-virgin olive oil, plus more for drizzling',
      '2 teaspoons chopped thyme',
      '5 ounces cured Spanish chorizo, cut into 1/2-inch dice'
    ],
    steps: [
      'Bring a large saucepan of salted water to a boil with the onion and bay leaves. Using tongs, carefully dip the octopus into the boiling water 3 times, then leave it in the water. Cook the octopus over moderately low heat until tender, about 1 hour. Remove from the heat and let the octopus stand in the water for 10 minutes; drain. Cut the octopus into 1/2-inch pieces.',
      'In a medium saucepan, cover the potatoes with water and add salt. Bring to a boil and simmer over moderate heat until just tender, about 10 minutes. Drain and transfer to a bowl. Toss the potatoes with the 3 tablespoons of olive oil and the thyme; season with salt and pepper.',
      'In a grill pan, cook the chorizo over moderately high heat until warmed through, 2 minutes. Transfer to a bowl. Add the potatoes and octopus to the pan and cook until hot and the potatoes are golden in spots, 5 minutes. Add to the chorizo, season with salt and pepper and toss. Drizzle with oil, garnish with shiso, if using, and serve.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Octopus(
    id: 'm3',
    categories: [
      'c1'
    ],
    title: 'Octopus Turnovers with Spicy Creole Mayonnaise',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2013%2F12%2F06%2F201307-xl-octopus-turnovers-with-spicy-mayonnaise-2000.jpg',
    duration: 45,
    ingredients: [
      '3 pounds octopus, cleaned',
      '1 head of garlic, halved horizontally',
      '1 onion, halved',
      '2 celery ribs',
      '2 bay leaves',
      '1 1/2 teaspoons whole black peppercorns'
      '2 tablespoons kosher salt'
    ],
    steps: [
      'In a large pot, combine the octopus with all of the remaining ingredients and add enough water to cover by 1 to 2 inches. Bring to a boil, reduce the heat to moderate and simmer until the octopus is tender, about 45 minutes. Let the octopus cool in the liquid, then drain and pat dry. Separate the head and tentacles and discard the hard beak. Thinly slice the octopus.',
      'In a large skillet, heat 2 tablespoons of the olive oil. Add the finely chopped onion, cover and cook over moderately low heat, stirring frequently, until softened, about 5 minutes. Add the chopped red pepper along with the cubanelle peppers, yellow pepper, carrot, tomato, capers, garlic and bay leaf. Cover and cook over moderate heat, stirring frequently, until the peppers are softened, about 5 minutes. Add the tomato juice, dissolved tomato paste and the cilantro and cook partially covered over low heat, stirring occasionally, until thickened, about 30 minutes. Set aside 1/2 cup of the Creole sauce and discard the bay leaf.',
      'Add the sliced octopus to the Creole sauce in the skillet and simmer for 10 minutes. Season with salt and let cool completely. Scrape the octopus filling into a bowl and refrigerate until chilled, at least 30 minutes.',
      'Meanwhile, preheat the oven to 425°. Cut the remaining onion half into wedges and place in a small roasting pan. Add the quartered red pepper and the hot red chiles and toss with the remaining 1 tablespoon of olive oil. Roast for about 20 minutes, until the vegetables are softened and blistered in spots. Transfer the vegetables to a blender and let cool. Add the reserved 1/2 cup of Creole sauce and puree until smooth. Add the mayonnaise and lime juice and pulse to blend. Season the sauce with salt and refrigerate until chilled.',
      'make the dough In a standing electric mixer fitted with the paddle, mix the 3 1/2 cups of flour with the salt and vegetable shortening at low speed until evenly combined. Add the egg and ice water and mix until the dough is evenly moistened. Knead the dough briefly until smooth, then divide it into 16 equal pieces. Roll each piece into a ball and transfer to a lightly floured baking sheet. Cover with a lightly moistened paper towel and plastic wrap and let stand at room temperature for 30 minutes.',
      'In a large, deep skillet, heat the vegetable oil to 350°. Cover a rack with paper towels and set it on a baking sheet. Working in batches, fry the turnovers over moderately high heat, turning once, until golden, about 4 minutes. Drain on the paper towel–lined rack. Let cool slightly, then serve the turnovers with the Creole mayonnaise.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Octopus(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'Pan-Seared Octopus with Italian Vegetable Salad',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2013%2F12%2F06%2F201310-xl-pan-seared-octopus-with-italian-vegetable-salad-2000.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Octopus(
    id: 'm5',
    categories: [
      'c1'
    ],
    title: 'Octopus with Black Bean-Pear Sauce',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2013%2F12%2F06%2F201001-xl-octopus-with-black-bean-pear-sauce.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Octopus(
    id: 'm6',
    categories: [
      'c1',
      'c10',
    ],
    title: 'Octopus Salad with Potatoes and Green Beans',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2013%2F12%2F06%2F200808xl-octopus-salad-with-potatoes-and-green-beans.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Octopus(
    id: 'm7',
    categories: [
      'c1',
    ],
    title: 'Red Wine-Braised Baby Octopus with Black Olives',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2013%2F12%2F06%2F200907-xl-octopus-red-wine.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Octopus(
    id: 'm8',
    categories: [
      'c1',
    ],
    title: 'Nakji bokkeum',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.tasteatlas.com/images/dishes/ecec07c17e544581bd532f9d09238430.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
];
