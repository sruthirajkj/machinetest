import 'package:flutter/material.dart';

class biodata extends StatefulWidget {
  String? name;
  String? age;
  String? address;
  int clicked;
  bool? click1;
  bool? click2;
  bool? click3;
  biodata(
      {required this.name,
      required this.age,
      required this.address,
      required this.click1,
      required this.click2,
      required this.click3,
      required this.clicked});
  @override
  State<biodata> createState() => _biodataState();
}

class _biodataState extends State<biodata> {
  String? gender;
  String c1 = "";
  String c2 = "";
  String c3 = "";
  void details() {
    if (widget.clicked == 1) {
      setState(() {
        gender = "male";
      });
    } else {
      setState(() {
        gender = "female";
      });
    }
    if (widget.click1 == true) {
      setState(() {
        c1 = "malayalam";
      });
    }
    if (widget.click2 == true) {
      setState(() {
        c2 = "english";
      });
    }
    if (widget.click3 == true) {
      setState(() {
        c3 = "hindi";
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    details();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 150.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              widget.name.toString(),
              style: TextStyle(fontSize: 20),
            ),
            Text(widget.age.toString(), style: TextStyle(fontSize: 20)),
            Text(widget.address.toString(), style: TextStyle(fontSize: 20)),
            Text(gender!, style: TextStyle(fontSize: 20)),
            Text(c1!, style: TextStyle(fontSize: 20)),
            Text(c2!, style: TextStyle(fontSize: 20)),
            Text(c3!, style: TextStyle(fontSize: 20))
          ]),
        ),
      ),
    );
  }
}
