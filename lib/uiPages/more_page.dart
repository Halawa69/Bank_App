import 'package:flutter/material.dart';
import 'login.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  // Simulate the sign-out function
  void _signOut(BuildContext context) {
    // Add logic to delete user session or sign out
    print("User signed out");

    // Navigate to the login page
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  // Simulate the delete account function
  void _deleteAccount(BuildContext context) {
    // Add logic to delete the user account
    print("Account deleted");

    // After deleting account, navigate to login page or another appropriate screen
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('More options'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _deleteAccount(context), // Call _deleteAccount with context
                child: const Text(
                  'Delete Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20), // Add spacing between buttons
              ElevatedButton(
                onPressed: () => _signOut(context), // Call _signOut with context
                child: const Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
