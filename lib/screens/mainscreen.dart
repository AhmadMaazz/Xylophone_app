import 'package:flutter/material.dart';
import 'package:xylophone_app/screens/xylophone_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        title: const Text('Xylophone'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Welcome To\nXylophone App!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Pacifico'),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 150,
                color: Colors.white,
                child: Container(
                  height: 180,
                  width: 100,
                  color: Colors.white,
                  child: IconButton(
                    highlightColor: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const XyloScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.music_note,
                      size: 100,
                      color: Colors.brown,
                    ),
                    splashColor: Colors.brown.shade400,
                    splashRadius: 300,
                  ),
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              const Text(
                'Press the Music-Note\nTo Play Xylophone',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
