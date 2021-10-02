import 'package:androidstudio_projects/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dashboard_screen extends StatefulWidget {
  const dashboard_screen({Key? key}) : super(key: key);

  @override
  State<dashboard_screen> createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("OVERVIEW",
            style: GoogleFonts.montserrat(
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children:[
          Container(
            color:Colors.black,
            height:1920,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(const Radius.circular(30)),
              ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:55, left:20),
            child: Text("Cards", style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize:25, fontWeight:FontWeight.bold)),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 110, horizontal: 15),
            child: SizedBox(
              width:380,
              height:250,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: const BorderRadius.all(const Radius.circular(30)),
                ),
              ),
            ),
          )
        ]

      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListView(
            children: [
              ListTile(
                  title: Text("Transfer Money",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      )))),
              ListTile(
                title: Text("Logout",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            ))),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login_screen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
