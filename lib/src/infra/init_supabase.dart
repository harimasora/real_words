import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> initSupabase() async {
  await Supabase.initialize(
    url: 'https://aroenqrnmelxtqarcuyw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFyb2VucXJubWVseHRxYXJjdXl3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEzODE0NTQsImV4cCI6MjA1Njk1NzQ1NH0.8NahGQDUoR4uTlio6VezRP05nHCOmN3Haomw4PFGu00',
  );
}
