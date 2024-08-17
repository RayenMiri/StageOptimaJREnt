import 'package:flutter/material.dart';
import 'package:my_app/Screens/EspaceUniversiteDashboardHomeTabContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set your primary color theme here
        textTheme: TextTheme(
          // Define your text styles here
          titleSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          labelMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        ),
      ),
      home:
          EspaceUniversitDashboardHomeTabContainerScreen(), // Set the initial screen here
    );
  }
}
