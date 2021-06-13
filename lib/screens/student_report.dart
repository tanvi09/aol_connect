import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'package:firebase_core/firebase_core.dart'; // new
import 'package:firebase_auth/firebase_auth.dart'; // new
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart'; // new

class StudentReport extends StatelessWidget {
  static final String routeName = "student_report";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("View Student Report")
      ),
      body: new Text("1) View Report 2) Send custom PNs from here...!!!!!!")
    );
  }
}
