import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  bool? isChecked;
  ProfilePage({super.key, required this.isChecked});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 1;
  bool? _isChecked = false;

  // Future<void> getStufFromPlaces() async {
  //   var url = Uri.https('api.kanye.rest');
  //   var response = await http.get(url);
  //   print('Response status: ${response.statusCode}');
  //   print('Response body: ${response.body}');

  //   print(await http.get(Uri.https('example.com', 'foobar.txt')));
  // }

  @override
  Widget build(BuildContext context) {
    // getStufFromPlaces();
    _isChecked = widget.isChecked;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        actions: [
          BackButton(
            onPressed: () => {Navigator.pop(context)},
          )
        ],
      ),
      body: Checkbox(
          value: _isChecked,
          onChanged: (bool? newCheckedValue) {
            setState(() {
              _isChecked = newCheckedValue;
            });
          }),
    );
  }
}
