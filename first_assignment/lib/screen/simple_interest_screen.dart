import 'package:flutter/material.dart';
import 'common.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final pController = TextEditingController();
  final rController = TextEditingController();
  final tController = TextEditingController();
  String result = '';

  void calculateInterest() {
    final p = double.tryParse(pController.text);
    final r = double.tryParse(rController.text);
    final t = double.tryParse(tController.text);
    setState(() {
      result =
          (p != null && r != null && t != null)
              ? 'Simple Interest: ${(p * r * t) / 100}'
              : 'Invalid input!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildFormScreen(context, 'Simple Interest', [
      inputField('Principal', pController),
      inputField('Rate (%)', rController),
      inputField('Time (years)', tController),
      ElevatedButton(
        onPressed: calculateInterest,
        child: const Text('Calculate'),
      ),
      Text(result),
    ]);
  }
}
