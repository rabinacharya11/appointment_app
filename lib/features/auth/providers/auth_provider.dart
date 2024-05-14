import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_6th_may/core/model/user.dart';

class AuthProvider with ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  bool _isLoading = false;
  bool get isLoading => _isLoading; 

  DateTime? _dateOfBirth; 
  DateTime? get dateOfBirth => _dateOfBirth; 

  void setDateOfBirth(DateTime value) {
    _dateOfBirth = value;
    notifyListeners();
  }
  

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<String> register({
    required UserModel user,
    required String password,
  }) async {
    String result = 'OK';

    try {
      final res = await _auth.createUserWithEmailAndPassword(
        email: user.email,
        password: password,
      );
      await _firestore.collection('users').doc(res.user!.uid).set(user.toMap());
    } on FirebaseException catch (e) {
      result = e.message!;
    } catch (e) {
      result = e.toString();
    }

    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);

    return result;
  }

  void login() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
  }

  void forgotPassword() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
  }

  // store user data in cloud firestore
  void storeUserData() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
  }

  void logout() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
  }

  void getUserData() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
  }
}
