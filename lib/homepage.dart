import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _dice1 = 1;
  int _dice2 = 1;

  void _rollDice() {
    setState(() {
      _dice1 = Random().nextInt(6) + 1;
      _dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Roll'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/dice$_dice1.png'),
                const SizedBox(width: 20),
                Image.asset('assets/dice$_dice2.png'),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _rollDice,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Roll Dice')
            ),
                        const SizedBox(height: 20),
            if (_dice1 != _dice2) const Text('You lose!'),
            if (_dice1 == _dice2) const Text('You win!'),
            
          ],
        ),
      ),
    );
  }
}