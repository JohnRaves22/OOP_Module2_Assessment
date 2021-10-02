// ignore_for_file: prefer_const_constructors
import 'package:androidstudio_projects/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_screen extends StatefulWidget {
  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  TextEditingController userInputController = new TextEditingController();

  TextEditingController passInputController = new TextEditingController();

  String userValue = "", passValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 155, horizontal: 35),
        child: Column(
          children: [
            Text(
              'CHADBANK',
              style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 25),
            TextField(
              style: TextStyle(color: Colors.white),
              controller: userInputController,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color:Colors.black)
                ),
                border: OutlineInputBorder(), 
                labelText: "Username"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passInputController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color:Colors.black)
                ),
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
            cursorColor: Colors.white,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>dashboard_screen()));
              },
              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
