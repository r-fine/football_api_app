import 'package:flutter/material.dart';
import 'package:football_api_app/views/scores/scores_view.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScoresView(),
    );
  }
}
