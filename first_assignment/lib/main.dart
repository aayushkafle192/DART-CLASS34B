import 'package:first_assignment/screen/add_numbers_screen.dart';
import 'package:first_assignment/screen/area_of_circle_screen.dart';
import 'package:first_assignment/screen/dashboard_screen.dart';
import 'package:first_assignment/screen/palindrome_screen.dart';
import 'package:first_assignment/screen/simple_interest_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const FirstAssignmentApp());
}

class FirstAssignmentApp extends StatelessWidget {
  const FirstAssignmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Assignment',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardScreen(),
      routes: {
        '/add': (context) => const AddNumbersScreen(),
        '/circle': (context) => const AreaOfCircleScreen(),
        '/interest': (context) => const SimpleInterestScreen(),
        '/palindrome': (context) => const PalindromeScreen(),
      },
    );
  }
}
