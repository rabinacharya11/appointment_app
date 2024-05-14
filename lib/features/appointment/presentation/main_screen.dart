import 'package:flutter/material.dart';
import 'package:flutter_app_6th_may/appointment_screen.dart';

class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Management App'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Welcome, Thabo Mbeki'), // Replace with dynamic username
            const SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddAppointmentPage(),
                  ),
                );
              },
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    "Appointments",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            InkWell(
              onTap: () {},
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    "Profile Page",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            InkWell(
              onTap: () {},
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    "Review Page",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            InkWell(
              onTap: () {},
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
