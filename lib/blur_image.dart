

import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Blurrr"),

      ),
      body: Stack(
        children: [
          Image.asset("assets/images/peakpx.jpg"),
          BackdropFilter(
            filter:ImageFilter.blur(
              sigmaX: 1,
              sigmaY: 1,

            ),
            child: Center(
              child: Text("Hello"),
            ),),
        ],
      ),
    );
  }
}

