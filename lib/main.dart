 import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://aroenqrnmelxtqarcuyw.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFyb2VucXJubWVseHRxYXJjdXl3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEzODE0NTQsImV4cCI6MjA1Njk1NzQ1NH0.8NahGQDUoR4uTlio6VezRP05nHCOmN3Haomw4PFGu00',
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
