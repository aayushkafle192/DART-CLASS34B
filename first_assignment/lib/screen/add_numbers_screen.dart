import 'package:flutter/material.dart';
import 'common.dart';

class AddNumbersScreen extends StatefulWidget {
  const AddNumbersScreen({super.key});

  @override
  State<AddNumbersScreen> createState() => _AddNumbersScreenState();
}

class _AddNumbersScreenState extends State<AddNumbersScreen> {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  String result = '';

  void addNumbers() {
    final num1 = double.tryParse(num1Controller.text);
    final num2 = double.tryParse(num2Controller.text);
    setState(() {
      result =
          (num1 != null && num2 != null)
              ? 'Sum: ${num1 + num2}'
              : 'Invalid input!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildFormScreen(context, 'Add Two Numbers', [
      inputField('Number 1', num1Controller),
      inputField('Number 2', num2Controller),
      ElevatedButton(onPressed: addNumbers, child: const Text('Calculate')),
      Text(result),
    ]);
  }
}
