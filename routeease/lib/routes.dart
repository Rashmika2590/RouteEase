import 'package:flutter/material.dart';
import 'package:routeease/Screens/HomePage.dart';
import 'package:routeease/Screens/searchLocationPage.dart';

// Import other pages as needed

// Define the route map
Map<String, WidgetBuilder> appRoutes = {
  '/HomePage': (context) => const HomePage(),
  '/searchLoactionPage': (context) => searchLoactionPage(),
  // Add more routes as needed
};
