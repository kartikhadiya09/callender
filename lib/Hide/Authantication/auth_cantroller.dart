import 'package:callender/Hide/Hepling.dart';
import 'package:callender/Hide/Home/homehide.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;




  void Singup(String e1, String p1,context) {

    try{
      auth.createUserWithEmailAndPassword(email: e1, password: p1).then((value) =>
          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {

        return HideHome();
      },)));
    }  catch (d){
      print("RR Eror");
      hepling.sucsecmsj(context);
    }







  }



  void login(String e1, String p1, BuildContext context) {
    auth.signInWithEmailAndPassword(email: e1, password: p1)
        .then((value) =>   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {

      return HideHome();
    },)));
  }






  bool user(BuildContext context) {
    if (auth.currentUser != null) {
      //login user

      return true;

    } else {
      //login faild
      return false;
    }
  }




  void singOut(BuildContext context){
    auth.signOut().whenComplete(() => Navigator.pushNamed(context, '/'));
  }


  void Google(BuildContext context) async {
    //open google dilog
    GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();

    //Select Id
    GoogleSignInAuthentication gsa = await googleSignInAccount!.authentication;

    // Data Creadatial
    var  credatial = GoogleAuthProvider.credential(accessToken: gsa.accessToken,idToken: gsa.idToken);

    //Login
    auth.signInWithCredential(credatial).whenComplete(() =>   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {

      return HideHome();
    },)));

  }
}



