import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_flutter/login_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mochammad Rafly Herdianto\n2031710008'),
        backgroundColor: Color.fromARGB(255, 139, 0, 186),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/profile.png',
              ),
              radius: 60,
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 20),
            const Text(
              'Signed In as',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              user.email!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 139, 0, 186),
                minimumSize: const Size.fromHeight(50),
              ),
              icon: const Icon(Icons.arrow_back, size: 32),
              label: const Text(
                'Sign Out',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () => FirebaseAuth.instance.signOut(),
            ),
          ],
        ),
      ),
    );
  }
}
