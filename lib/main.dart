import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repair_duniya_intern/app/app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const DrinksApp());
  });

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}
