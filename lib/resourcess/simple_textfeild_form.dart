import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 64),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      )
    );
    return Scaffold(
       body: SafeArea(
         child: Padding(
           padding: const EdgeInsets.only(top: 20, left:10, right: 10),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     labelText: 'First Name',
                     hintText: 'Enter your name',
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     labelText: 'Last Name',
                     hintText: 'Enter last name',
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     labelText: 'Email',
                     hintText: 'Enter your Email',
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     labelText: 'Password',
                     hintText: 'Create Password',
                   ),
                 ),
               ),
         
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: ElevatedButton(
                   onPressed: (){},
                   style: buttonStyle,
                   child: const Text('Submit', style: TextStyle(
                      fontSize: 20,
                     fontWeight: FontWeight.bold,
                   ),),
                 )
               ),
             ],
           ),
         ),
       ),
    );
  }

}