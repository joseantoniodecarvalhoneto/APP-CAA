// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

Future<void> speakText(String text) async {
  final FlutterTts flutterTts = FlutterTts();
  await flutterTts.stop();
  await flutterTts.setLanguage("pt-BR");
  await flutterTts.setSpeechRate(1.0);
  await flutterTts.setVolume(1.0);
  await flutterTts.setPitch(1.0);

  await flutterTts.speak(text);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
