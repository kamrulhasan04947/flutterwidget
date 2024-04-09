import 'package:flutter/material.dart';

class ShowLinearProgressBar extends StatelessWidget{
  const ShowLinearProgressBar({super.key, });
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     backgroundColor: Colors.grey,
     body: Center(
       child: Container(
         padding: const EdgeInsets.all(10),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(25),
           border: Border.all(color: Colors.black26),
           color: Colors.white,
         ),
         child: const Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             LinearProgressIndicator(
               minHeight: 10,
               color: Colors.red,
               backgroundColor: Colors.greenAccent,
               borderRadius: BorderRadius.all(Radius.circular(50)),
             ),
             SizedBox(
               height: 10,
             ),
             Text('Loading', style: TextStyle(
               color: Colors.blue,
             ),
             )
           ],
         ),
       ),
     ),
   );
  }

}