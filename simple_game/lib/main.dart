import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'CairoPlay'),
      home: const SimpleGame(),
    );
  }
}

class SimpleGame extends StatefulWidget {
  const SimpleGame({super.key});

  @override
  State<SimpleGame> createState() => _SimpleGameState();
}

class _SimpleGameState extends State<SimpleGame> {
  int imageOne = 1;
  int imageTwo = 2;

  void changeImage() {
    imageOne = Random().nextInt(8) + 1;
    imageTwo = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('لعبة التطابق'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            imageOne == imageTwo
                ? '!مبرووك لقد حصلت عليها\n🎉✨🎊'
                : 'حاول مرة أخرى\n❌',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeImage();
                      });
                    },
                    child: Image.asset(
                      'images/image-$imageOne.png',
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeImage();
                      });
                    },
                    child: Image.asset(
                      'images/image-$imageTwo.png',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            changeImage();
          });
        },
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        child: Icon(
          Icons.touch_app,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
