import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_app.dart';

class loginhomepage extends StatefulWidget {
  const loginhomepage({Key? key}) : super(key: key);

  @override
  State<loginhomepage> createState() => _loginhomepageState();
}

class _loginhomepageState extends State<loginhomepage> {
  var data;
  getdata() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    data=sharedPreferences.getString("name");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Loginapp();
            }));
          },
          child: Text("sighout")),
    );
  }
}
