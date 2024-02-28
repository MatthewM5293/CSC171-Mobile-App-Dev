import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String appTitle = "Weather Dating App";
    return MaterialApp(
      // Application name
      title: appTitle,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

BottomNavigationBar myAwesomeNavBar(BuildContext context, int currentIndex) {
  return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) => {print(value)},
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Matches"),
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.cloud), label: "Profile"),
      ]);
}
