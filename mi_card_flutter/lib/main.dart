import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade800,
        body: SafeArea(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/ash.jpg'),
              ),
              const Text(
                'Ash Ketchum',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FROM PALLET CITY',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.indigo.shade800,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+55 31 99999 9999',
                      style: TextStyle(
                          color: Colors.indigo.shade800,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.indigo.shade800,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'ash_ketchum@email.com',
                      style: TextStyle(
                          color: Colors.indigo.shade800,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
