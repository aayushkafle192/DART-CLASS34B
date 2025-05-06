import 'package:flutter/material.dart';
import 'common.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  final inputController = TextEditingController();
  String result = '';

  void checkPalindrome() {
    final input = inputController.text;
    final reversed = input.split('').reversed.join('');
    setState(() {
      result = (input == reversed) ? 'Palindrome!' : 'Not a palindrome.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildFormScreen(context, 'Palindrome Check', [
      inputField('Enter text or number', inputController),
      ElevatedButton(onPressed: checkPalindrome, child: const Text('Check')),
      Text(result),
    ]);
  }
}
