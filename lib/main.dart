import 'package:flutter/material.dart';

import 'screens/widgets/top_bar.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopBar(
          title: 'NAVAL MOHAMMED',
          subtitle: 'PHOTOGRAPHER',
          color: Color(0xff513144),
        ),
        const SizedBox(height: 10),
        Text(
          'Photography',
          style: TextStyle(fontSize: 22, color: Colors.black),
        )
      ],
    )));
  }
}
