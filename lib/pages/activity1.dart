import 'package:flutter/material.dart';
import 'package:flutterwidget/pages/activity2.dart';
import 'package:flutterwidget/pages/homepage.dart';


class ActivityOne extends StatelessWidget {
  const ActivityOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Activity1'),
        backgroundColor: Colors.black54,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )
              ),
              child: const Text(
                'goto Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivityTwo()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                )
            ),
            child: const Text(
              'goto activity2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}