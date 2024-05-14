import 'package:flutter/material.dart';

class AppointmentProvider with ChangeNotifier { 

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }


  submitAppointment() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
  } 

  getAppointments() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
  }

  deleteAppointment() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
  }

  updateAppointment() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
  }

  


}