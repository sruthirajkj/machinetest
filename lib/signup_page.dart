import 'package:flutter/material.dart';

import 'biodata.dart';

class registrationForm extends StatefulWidget {
  const registrationForm({Key? key}) : super(key: key);

  @override
  State<registrationForm> createState() => _registrationFormState();
}

class _registrationFormState extends State<registrationForm> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  int clicked = 0;
  bool click1 = false;
  bool click2 = false;
  bool click3 = false;
  bool language = false;
  bool genderclicked = false;
  var fkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: fkey,
          child: SafeArea(
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Registration Form",style: TextStyle(fontSize: 25),),
              TextFormField(
                controller: namecontroller,
                decoration: InputDecoration(
                    hintText: "enter your name",
                    labelText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                validator: (v) {
                  if (v!.isEmpty) {
                    return "please enter your name";
                  }
                },
              ),
              TextFormField(
                controller: agecontroller,
                decoration: InputDecoration(
                    hintText: "enter your age",
                    labelText: "Age",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                validator: (v) {
                  if (v!.isEmpty) {
                    return "please enter age";
                  }if(v.length>3){
                    return "please check";
                  }
                },
              ),
              TextFormField(
                controller: addresscontroller,
                decoration: InputDecoration(
                    hintText: "enter your address",
                    labelText: "Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                validator: (v) {
                  if (v!.isEmpty) {
                    return "please enter your name";
                  }
                },
              ),
              Row(
                children: [
                  Text("GENDER"),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text("Male"),
                      Radio(
                        value: 1,
                        groupValue: clicked,
                        onChanged: (v) {
                          setState(() {
                            genderclicked = true;
                          });
                          clicked = v!;
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Female"),
                      Radio(
                        value: 2,
                        groupValue: clicked,
                        onChanged: (v) {
                          setState(() {
                            genderclicked = true;
                          });
                          clicked = v!;
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("LANGUAGE"),
                ],
              ),

              Row(
                children: [
                  Row(
                    children: [
                      Text("malayalam"),
                      Checkbox(
                        value: click1,
                        onChanged: (c) {
                          setState(() {
                            language = true;
                          });
                          click1 = c!;
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("english"),
                      Checkbox(
                        value: click2,
                        onChanged: (c) {
                          setState(() {
                            language = true;
                          });
                          click2 = c!;
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("hindi"),
                      Checkbox(
                        value: click3,
                        onChanged: (c) {
                          setState(() {
                            language = true;
                          });
                          click3 = c!;
                        },
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(onPressed: () {
                bool validate=fkey.currentState!.validate();
                if(validate==false){
                  return;
                }else{if(genderclicked==true&&language==true){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return biodata( name: namecontroller.text,
                      age: agecontroller.text,
                      address: addresscontroller.text,
                      clicked: clicked,
                      click1: click1,
                      click2: click2,
                      click3: click3,
                      );
                  }));

                }}
              }, child: Text("submit"))
            ]),
          )),
    );
  }
}
// bool validate = fkey.currentState!.validate();
// if(validate == false){
// return ;
// }else{
// if(genderclicked == true&&hobbiesclicked==true){

