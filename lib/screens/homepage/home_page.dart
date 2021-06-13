import 'package:aol_connect/screens/audio/kriya_practice.dart';
import 'package:aol_connect/screens/student_report.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'package:firebase_core/firebase_core.dart'; // new
import 'package:firebase_auth/firebase_auth.dart'; // new
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart'; // new


class HomePage extends StatelessWidget {
  static final String routeName = "home";

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome to Art of Living Connect"),
      ),
      floatingActionButton: Wrap( //will break to another line on overflow
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KriyaPractice()));
                },
                child: Icon(Icons.music_note_rounded),
              )
          ), //button first

          Container(
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentReport()));
                },
                backgroundColor: Colors.deepPurpleAccent,
                child: Icon(Icons.table_chart),
              )
          )
          // Add more buttons here
        ],
      ),
      // body: Row(
      //   child: ElevatedButton(
      //     child: Text('Student View'),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => KriyaPractice())
      //         );
      //     },
      //   ),
      // )
    );
  }
}

