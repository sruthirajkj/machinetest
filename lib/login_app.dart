import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class Loginapp extends StatefulWidget {
  const Loginapp({Key? key}) : super(key: key);

  @override
  State<Loginapp> createState() => _LoginappState();
}

class _LoginappState extends State<Loginapp> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  setdata() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("name", namecontroller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          TextField(
            controller: namecontroller,
            decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
          ),
          TextField(
            controller: passwordcontroller,
            decoration: InputDecoration(
                hintText: "password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
          ),
          ElevatedButton(
              onPressed: () {
                setdata();
              },
              child: Text("signup")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return loginhomepage();
                }));
              },
              child: Text("login"))
        ]),
      ),
    );
  }
}
