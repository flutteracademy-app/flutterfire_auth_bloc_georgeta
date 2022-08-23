import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  //Firebase user a realtime stream
  Stream<User?> get user => _auth.authStateChanges();

  //Sign out
  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }

  //Method to handle user sign in using email and password
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      log('$e');
    }
  }

  //User registration using email and assword
  Future<void> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      log('$e');
    }
  }

  //Password reset email
  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      log('$e');
    }
  }

  //Authentication with google
  Future<void> authWithGoogle() async {
    try {
      //Trigger the authetication flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      // Obtain the auth deatails from request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      //Create a new credential
      final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      //Once signed in, return the UserCredential
      await _auth.signInWithCredential(credential);
    } catch (e) {
      log('$e');
    }
  }
}
