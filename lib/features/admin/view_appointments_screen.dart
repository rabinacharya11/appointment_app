import 'package:flutter/material.dart';

class ViewAppointmentsScreen extends StatelessWidget {
  const ViewAppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: AppBar( 
        title: Text("Recevied Appointments"), 

      ),

      body: SingleChildScrollView(
        child: Column( 
          children: List.generate(15, (index) => ListTile( 
            title: Text("Appointment $index"), 
            isThreeLine: true,
            subtitle: Text("Patient Name: Patient $index"),
            trailing: IconButton( 
              icon: const Tooltip( 
                message: "Mark as done",
                child: Icon(Icons.done_rounded, color: Colors.green,),),
              onPressed: () {}, 
            ),
          )),
        ),
      ),
    );
  }
}