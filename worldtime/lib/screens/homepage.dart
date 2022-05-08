import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:worldtime/screens/mainpage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromRGBO(235, 235, 235, 1),
          child: Expanded(
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "World Time",
                        style: GoogleFonts.getFont(
                          'Playfair Display',
                          textStyle: TextStyle(
                            color: Color.fromRGBO(10, 34, 39, 1),
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 100.0),
                      child: AnalogClock(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2.0, color: Colors.black),
                            color: Color.fromRGBO(10, 34, 39, 1),
                            shape: BoxShape.circle),
                        width: 300,
                        height: 300,
                        showDigitalClock: false,
                        hourHandColor: Color.fromRGBO(222, 209, 135, 1),
                        minuteHandColor: Color.fromRGBO(222, 209, 135, 1),
                        numberColor: Color.fromRGBO(222, 209, 135, 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                        ),
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(10, 34, 39, 1),
                            backgroundColor: Color.fromRGBO(222, 209, 135, 1),
                            textStyle: const TextStyle(fontSize: 80),
                            padding: EdgeInsets.fromLTRB(10, 14, 10, 14),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 2),
                            )),
                        child: Text(
                          "EXPLORE",
                          style: GoogleFonts.getFont(
                            'Playfair Display',
                            textStyle: TextStyle(
                              color: Color.fromRGBO(10, 34, 39, 1),
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
