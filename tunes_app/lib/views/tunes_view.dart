import 'package:flutter/material.dart';

import '../data/tunes_data.dart';
import '../widgets/tune_item.dart';

class TunesView extends StatelessWidget {
  const TunesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tunes Apllication'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children: tunesData
            .map(
              (item) => TuneItem(item),
            )
            .toList(),
      ),
    );
  }
}
