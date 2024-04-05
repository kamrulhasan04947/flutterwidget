import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesignCard extends StatelessWidget{
  const DesignCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 80,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              shadowColor: const Color.fromRGBO(33, 191, 115, 1,),
              color: const Color.fromRGBO(33, 191, 155, 1),
              child: const SizedBox(
                width: 200,
                height: 200,
                child: Center(child:Text(
                  'This is a card',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}