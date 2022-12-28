import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          //constraints: BoxConstraints.expand(),
          //alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.pink,
              style: BorderStyle.solid,
              width: 5.0
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                color: Colors.grey,
                spreadRadius: 2.0,
                blurRadius: 5.0,
              )
            ]
          ),
          child: const Text(
            "Creating a mobile app!", 
            style: TextStyle(
              fontSize: 20.0, 
              color: Colors.black
              )
            )
          )
        ),
    );
  }
}
