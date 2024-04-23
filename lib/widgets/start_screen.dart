import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset(
                'lib/images/avocado.png',
                width: 250,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'We deliver groceries at your doorstep',
              style: TextStyle(
                fontSize: 45,
                // fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                height: 1.2
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            const Text(
              'Fresh items everyday',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: widget.switchScreen,
              child: Container(
                width: 140,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
