import 'package:flutter/material.dart';
import 'package:flutter_app_6th_may/features/admin/view_appointments_screen.dart';
import 'package:flutter_app_6th_may/features/admin/view_reviews_screen.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Management App - Admin'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Welcome, Admin'), // Replace with dynamic username
            const SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ViewAppointmentsScreen(),
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ViewReviewsScreen(),
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
                    "View Reviews",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
