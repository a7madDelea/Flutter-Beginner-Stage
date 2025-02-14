import 'package:flutter/material.dart';

import '../models/tune_model.dart';

class TuneItem extends StatelessWidget {
  final TuneModel tune;

  const TuneItem(this.tune, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          color: tune.color,
          child: Text(
            tune.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
