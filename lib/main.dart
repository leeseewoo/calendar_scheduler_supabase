import 'package:calendar_scheduler/firebase_options.dart' ;
import 'package:calendar_scheduler/screen/auth_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
      url: 'https://qimllvtetfazcttvpibz.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFpbWxsdnRldGZhemN0dHZwaWJ6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc0MjI5MjEsImV4cCI6MjAzMjk5ODkyMX0.bgzxgOirCtpvQh-XepFId9lYOs-1kJQ0yIxQFfS59QI',
      );


  await initializeDateFormatting();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    ),
  );
}
