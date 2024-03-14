import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:free_yourself_app/main.dart';


import 'package:free_yourself_app/pages/login_or_register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user logged in
          if (snapshot.hasData){
            return HomePageWithBottomNavBar();
          }
          //user not loggin in
          else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}