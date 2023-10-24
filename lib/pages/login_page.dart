import 'dart:html';
import 'dart:js';

import 'package:basic_flutter8/pages/home_page.dart';
import 'package:basic_flutter8/services/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext){
    return Scaffold(
      body:  Center(
        child: ElevatedButton(
          onPressed: (){
            signInWithGoogle();
          },
          child: Text('login with Google'),
        ),
      ),
    );
  }
  signInWithGoogle() async{
    GoogleSignInAccount? googleUser= await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth= await googleUser?.authentication;

    AuthCredential credential =  GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken
    );
    UserCredential userCredential= await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCredential.user?.displayName);

    if (userCredential.user != null){
      Navigator.of(context as BuildContext).push(MaterialPageRoute(
        builder: (context) => MyHomePage(title: 'Home Page')));
    }
  }
}