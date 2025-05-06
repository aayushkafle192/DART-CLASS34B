import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/add'),
            child: const Text('Add Two Numbers'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/circle'),
            child: const Text('Area of Circle'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/interest'),
            child: const Text('Simple Interest'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/palindrome'),
            child: const Text('Palindrome Check'),
          ),
        ],
      ),
    );
  }
}
