import 'package:flutter/material.dart';

class AddAppointmentPage extends StatefulWidget {
  @override
  State<AddAppointmentPage> createState() => _AddAppointmentPageState();
}

class _AddAppointmentPageState extends State<AddAppointmentPage> {
  final TextEditingController _dateController = TextEditingController();

  final TextEditingController _timeController = TextEditingController();

  final TextEditingController _reasonController = TextEditingController();

  void _submitAppointment(BuildContext context) async {
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Your appointment is received'),
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now()
          .add(Duration(days: 30)), // Allow selecting within 30 days
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointments Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () => _selectDate(context),
              child: Text(
                _selectedDate == null
                    ? 'Select Date'
                    : 'Date: ${_selectedDate?.day}/${_selectedDate?.month}/${_selectedDate?.year}',
              ),
            ),
            TextButton(
              onPressed: () => _selectTime(context),
              child: Text(
                _selectedTime == null
                    ? 'Select Time'
                    : 'Time: ${_selectedTime?.format(context)}',
              ),
            ),
            TextField(
              controller: _reasonController,
              decoration: InputDecoration(
                labelText: 'Reason',
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.deepPurple,
                    content: Text(
                      'Your appointment is received',
                    ),
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
                    "Submit Appointment",
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
