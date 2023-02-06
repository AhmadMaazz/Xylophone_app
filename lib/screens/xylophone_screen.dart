import 'package:flutter/material.dart';

import '../widgets/button.dart';

class XyloScreen extends StatelessWidget {
  const XyloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        title: const Text('Xylophone'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Button(
              size: size,
              color: Colors.red,
              limiter: 0.3,
              leftColor: Colors.red.shade100,
              rightColor: Colors.red.shade800,
              soundnum: 1,
            ),
            Button(
              size: size,
              color: Colors.orange,
              limiter: 0.4,
              leftColor: Colors.orange.shade100,
              rightColor: Colors.orange.shade800,
              soundnum: 2,
            ),
            Button(
              size: size,
              color: Colors.yellow,
              limiter: 0.5,
              leftColor: Colors.yellow.shade100,
              rightColor: Colors.yellow.shade800,
              soundnum: 3,
            ),
            Button(
              size: size,
              color: Colors.green,
              limiter: 0.6,
              leftColor: Colors.green.shade100,
              rightColor: Colors.green.shade700,
              soundnum: 4,
            ),
            Button(
              size: size,
              color: Colors.teal,
              limiter: 0.7,
              leftColor: Colors.teal.shade100,
              rightColor: Colors.teal.shade800,
              soundnum: 5,
            ),
            Button(
              size: size,
              color: Colors.blue,
              limiter: 0.8,
              leftColor: Colors.blue.shade100,
              rightColor: Colors.blue.shade800,
              soundnum: 6,
            ),
            Button(
              size: size,
              color: Colors.purple,
              limiter: 0.9,
              leftColor: Colors.purple.shade100,
              rightColor: Colors.purple.shade800,
              soundnum: 7,
            ),
          ],
        ),
      ),
    );
  }
}
