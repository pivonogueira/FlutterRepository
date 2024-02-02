import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pergunte-me', style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: const AskMe(),
    ),
  )


  );
}

class AskMe extends StatefulWidget {
  const AskMe({super.key});

  @override
  State<AskMe> createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {

  int answer = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
            onPressed: () {
              setState(() {
                answer = Random().nextInt(4) + 1;
              });
            }, child: Image.asset('images/ball$answer.png'),
          ))
        ],
      ),
    );
  }
}

