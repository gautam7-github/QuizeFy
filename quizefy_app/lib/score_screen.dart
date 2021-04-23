import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttericon/font_awesome_icons.dart';

// ignore: must_be_immutable
class ScoreScreen extends StatelessWidget {
  final int score;
  final int totalScore;
  ScoreScreen(this.score, this.totalScore);
  String getScorePhrase(int score) {
    var phrase = "";
    if (score == totalScore) {
      phrase = "Unbelievable";
    } else {
      if (score > 7 && score < totalScore) {
        phrase = "Keep it up";
      }
      if (score <= 7) {
        phrase = "Noob";
      }
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  getScorePhrase(score),
                  style: GoogleFonts.limelight(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "$score",
                  style: TextStyle(color: Colors.white, fontSize: 72),
                ),
                Divider(
                  color: Colors.grey.shade400,
                ),
                Text(
                  "$totalScore",
                  style: TextStyle(color: Colors.white, fontSize: 72),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesome.left),
        elevation: 10,
        highlightElevation: 100,
        backgroundColor: Colors.grey.shade900,
        onPressed: () {
          Get.back();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
