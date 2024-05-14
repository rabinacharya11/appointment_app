import 'package:flutter/material.dart';

class ViewReviewsScreen extends StatelessWidget {
  const ViewReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: AppBar( 
        title: const Text("Recevied reviews"), 

      ),

      body: SingleChildScrollView(
        child: Column( 
          children: List.generate(15, (index) => ListTile( 
            title: Text("Review $index"), 
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