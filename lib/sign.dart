import 'package:firstapp/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'first_page.dart';
import 'intro_one.dart';

class SignUp extends StatefulWidget {
  static const String routeName = '/sign';

  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true; // For password visibility toggle
  bool _obscureConfirmText = true; // For confirm password visibility toggle
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _isEmailValid = false;
  bool _passwordsMatch = true;
  bool _passwordValid = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateEmail);
    _passwordController.addListener(_validatePasswords);
    _confirmPasswordController.addListener(_validatePasswords);
  }

  @override
  void dispose() {
    _emailController.removeListener(_validateEmail);
    _passwordController.removeListener(_validatePasswords);
    _confirmPasswordController.removeListener(_validatePasswords);
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _validateEmail() {
    final email = _emailController.text;
    setState(() {
      _isEmailValid = _isValidEmail(email);
    });
  }

  bool _isValidEmail(String email) {
    final emailRegExp = RegExp(
      r'^[^@]+@[^@]+\.[^@]+$', // Basic email validation regex
      caseSensitive: false,
    );
    return emailRegExp.hasMatch(email);
  }

  void _validatePasswords() {
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;
    setState(() {
      _passwordsMatch = password == confirmPassword;
      _passwordValid = _isValidPassword(password);
    });
  }

  bool _isValidPassword(String password) {
    // Password criteria: at least 8 characters long
    return password.length >= 8;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                iconSize: 32.0,
                color: const Color.fromRGBO(133, 133, 133, 1),
                onPressed: () {
                  Navigator.of(context).pushNamed(IntroOne.routeNamed);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'Assets/signUp.png',
                    width: 120,
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 36.0, // Larger font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  suffixIcon: _emailController.text.isNotEmpty
                      ? Icon(
                    _isEmailValid ? Icons.check : Icons.error,
                    color: _isEmailValid ? Colors.green : Colors.red,
                  )
                      : null,
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // Color of the bottom border
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue), // Color when focused
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // Color of the bottom border
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue), // Color when focused
                  ),
                  suffix: Icon(
                    _passwordValid ? Icons.check : Icons.error,
                    color: _passwordValid ? Colors.green : Colors.red,
                  ),
                ),
                obscureText: _obscureText,
              ),
              const SizedBox(height: 40.0),
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  hintText: 'Confirm your password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirmText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureConfirmText = !_obscureConfirmText;
                      });
                    },
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // Color of the bottom border
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue), // Color when focused
                  ),
                  suffix: Icon(
                    _passwordsMatch ? Icons.check : Icons.error,
                    color: _passwordsMatch ? Colors.green : Colors.red,
                  ),
                ),
                obscureText: _obscureConfirmText,
              ),
              const SizedBox(height: 50.0),
              Center(
                child: SizedBox(
                  width: double.infinity, // Button spans full width
                  child: ElevatedButton(
                    onPressed: () {
                      if (_isEmailValid && _passwordValid && _passwordsMatch) {
                        Navigator.of(context).pushNamed(BottomBar.routNamed);
                        print('Sign Up Successful');
                      } else {
                        // Show error
                        print('Sign Up Failed');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Background color
                      foregroundColor: Colors.white, // Text color
                      padding: const EdgeInsets.symmetric(vertical: 16.0 ), // Increase height
                      textStyle: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold), // Increase text size
                    ),
                    child: const Text('Sign Up'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
