import 'package:flutter/material.dart';
import 'package:mobileappdev/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  setDarkMode() {
    final preferencesFuture = SharedPreferences.getInstance();
    preferencesFuture
        .then((preferences) => {preferences.setBool("isDarkMode", true)});
  }

  getDarkMode() {
    final preferencesFuture = SharedPreferences.getInstance();
    preferencesFuture.then((preferences) => {
          print("we are using dark mode: ${preferences.getBool("isDarkMode")}")
      });
  }

  bool? _isChecked = false;
  int _currentIndex = 1;

  void onCheckBoxClicked(bool isCLicked) {}

  Container buildProfileCard(String profileType) {
    return Container(
      width: 80,
      height: 20,
      color: Colors.purple,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [Text(profileType)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    getDarkMode();
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Weather API"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          onTap: (value) => {
                // switch(value)
                // {
                //   int() => 0,
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => ProfilePage()))
                //     break;
                //   int() => 1,
                //   Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ProfilePage()))
                //     break;
                //   int() => 2,
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ProfilePage()))
                //     break;
                // }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProfilePage(isChecked: _isChecked)))
                //setState(() => {_currentIndex = value})
              },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Matches"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.cloud), label: "Profile"),
          ]),
      body: Center(
          child: Row(
        children: [
          // buildProfileCard("Cloud"),
          // buildProfileCard("Snowflake"),
          // buildProfileCard("Rain"),
          Checkbox(
              value: _isChecked,
              onChanged: (bool? newCheckedValue) {
                setState(() {
                  _isChecked = newCheckedValue;
                });
              })
        ],
      )),
    );
  }
}
