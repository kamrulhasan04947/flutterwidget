import 'package:flutter/material.dart';
import 'package:flutterwidget/pages/activity1.dart';
import 'package:flutterwidget/pages/homepage.dart';


class ActivityTwo extends StatelessWidget {
  const ActivityTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Activity2'),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ActivityOne()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                )
            ),
            child: const Text(
              'goto activity1',
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