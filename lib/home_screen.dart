import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:java/main.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: _logout,
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }

  Future<void> _logout() async {
    await _auth.signOut();

    // Usamos el navigatorKey para realizar la navegación
    navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
}
