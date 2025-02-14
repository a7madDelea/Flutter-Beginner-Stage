import 'package:flutter/material.dart';

import 'views/tunes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tunes App',
      debugShowCheckedModeBanner: false,
      home: const TunesView(),
    );
  }
}
