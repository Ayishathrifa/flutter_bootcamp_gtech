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
            child: SingleChildScrollView(
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
          ),
          GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
            itemBuilder: (ctx, index) => Container(
              child: Image.network(
                'https://images.unsplash.com/photo-1622987437805-5c6f7c2609d7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1789&q=80',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    )));
  }
}
