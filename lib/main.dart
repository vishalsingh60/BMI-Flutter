import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'package:alan_voice/alan_voice.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  BMICalculator() {
    /// Init Alan Button with project key from Alan Studio
    AlanVoice.addButton("2bbe7842e85055194da53e271952540f2e956eca572e1d8b807a3e2338fdd0dc/stage");

    /// Handle commands from Alan Studio
    AlanVoice.onCommand.add((command) {
      debugPrint("got new command ${command.toString()}");
    });
    AlanVoice.activate();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        //0xFF-means opaque, 0A-code for red, 0E-code for green, 21-coe for blue
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
