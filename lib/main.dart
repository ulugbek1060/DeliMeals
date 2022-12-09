import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
              titleMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleSmall: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
      ),
      home: const CategoriesScreen(),
      routes: {
        '/category-meals': (context) => CategoryMealsScreen(),
      },
    );
  }
}
