import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.rocket_launch, size: 80, color: Colors.white),
            const SizedBox(height: 24),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Welcome!',
                  textStyle: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  speed: const Duration(milliseconds: 120),
                ),
              ],
              totalRepeatCount: 1,
            ),
            const SizedBox(height: 12),
            const Text(
              'Your adventure starts here.',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignupScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(
                  horizontal: 48,
                  vertical: 14,
                ),
              ),
              child: const Text('Get Started', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
