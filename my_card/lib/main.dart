import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Card',
      debugShowCheckedModeBanner: false,
      home: const MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 29, 50),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 105,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/image.jpg'),
              radius: 100,
            ),
          ),
          Text(
            'Ahmad Nidal',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 1,
            indent: 60,
            endIndent: 60,
            height: 10,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 32,
                color: Colors.blueGrey,
              ),
              title: Text(
                '+963 777 777 777',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(
                Icons.mail,
                size: 32,
                color: Colors.blueGrey,
              ),
              title: Text(
                'a7mad.delea@gmail.com',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
