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
import 'dart:async';

Future<void> textToSpeechAction(List<String> lista) async {
  FlutterTts flutterTts = FlutterTts();
  await flutterTts.setLanguage('pt-BR');
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(1.0);

  Completer<void> completer = Completer<void>();

  flutterTts.setCompletionHandler(() {
    if (!completer.isCompleted) {
      completer.complete();
    }
  });

  for (String texto in lista) {
    await flutterTts.speak(texto);
    await completer.future;
    completer = Completer<void>();
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
