// Importing necessary packages
import 'dart:async';                                                            // For asynchronous operations like stream subscriptions
import 'package:flutter/material.dart';                                         // Basic Material UI widgets
import 'package:supabase_flutter/supabase_flutter.dart';                        // For Supabase integration
import 'package:flutter_dotenv/flutter_dotenv.dart';                            // To load environment variables from .env file

// Importing custom screens
import 'package:flickchat_app/screens/auth/login_register.dart';                    // Login page
import 'package:flickchat_app/screens/home_screen.dart';                        // Home screen after user logs in

/// MAIN FUNCTION – ENTRY POINT OF THE APP
Future<void> main() async {
                                                                                // Required for initializing Flutter engine before calling other Flutter-related stuff
  WidgetsFlutterBinding.ensureInitialized();

                                                                                // Load .env file which contains sensitive data like Supabase URL and key
  await dotenv.load(fileName: '.env');

                                                                                // Connect the app to Supabase using credentials from the .env file
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,                                           // Supabase project URL
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,                                  // Supabase anonymous access key
    debug: true,                                                                // Enables debug logs; turn this off in production
  );

                                                                                // Start the application with the root widget
  runApp(const MyApp());
}

                                                                                // Define a global Supabase client so it can be accessed easily throughout the app
final supabase = Supabase.instance.client;

/// ROOT WIDGET – Wraps the entire app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlickChat',                                                       // App name
      theme: ThemeData.dark().copyWith(                                         // Apply dark theme
        primaryColor: Colors.green,                                             // Brand color
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.green),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      home: const AuthWrapper(),                                                // Decide screen based on auth status
    );
  }
}

/// AUTH WRAPPER – Decides whether to show login or home screen
class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  StreamSubscription<AuthState>? _authStateSubscription;

  @override
  void initState() {
    super.initState();
    _redirect();                                                                // Set up authentication listener
  }

  void _redirect() {
                                                                                // Listen for authentication state changes from Supabase
    _authStateSubscription = supabase.auth.onAuthStateChange.listen((data) {
      final session = data.session;                                             // Check if user is signed in or not
      if (!mounted) return;                                                     // Skip if widget is no longer part of the UI

      if (session != null) {
                                                                                // If user is signed in, go to home screen
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
              (route) => false,                                                 // Remove all previous routes from stack
        );
      } else {
                                                                                // If user is signed out, go to login page
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const LoginRegisterPage()),
              (route) => false,
        );
      }
    });
  }

  @override
  void dispose() {
                                                                                // Clean up the listener to avoid memory leaks
    _authStateSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
                                                                                // Show a loading spinner while checking authentication status
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}