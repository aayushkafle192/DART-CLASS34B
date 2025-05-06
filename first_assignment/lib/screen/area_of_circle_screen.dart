import 'package:flutter/material.dart';
import 'common.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final radiusController = TextEditingController();
  String result = '';

  void calculateArea() {
    final radius = double.tryParse(radiusController.text);
    setState(() {
      result =
          (radius != null)
              ? 'Area: ${3.14159 * radius * radius}'
              : 'Invalid input!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildFormScreen(context, 'Area of Circle', [
      inputField('Radius', radiusController),
      ElevatedButton(onPressed: calculateArea, child: const Text('Calculate')),
      Text(result),
    ]);
  }
}
