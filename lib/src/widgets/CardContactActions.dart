/*
Author : Lesly ARNAUD (l4rnaud)
Widget : Creation d'une liste d'action
*/
import 'package:flutter/material.dart';

class CardContactActions extends StatelessWidget {
  const CardContactActions({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(      
      margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
      padding: EdgeInsets.only(top: 5,bottom: 5),
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue.shade50,
            radius: 25,
            child: IconButton(
              icon: const Icon(Icons.call),
              color: Colors.blue,
              onPressed: () {},
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.green.shade50,
            radius: 25,
            child : IconButton(
              icon: const Icon(Icons.sms),
              color: Colors.green,
              onPressed: () {},
            ),
            ),
          CircleAvatar(
            backgroundColor: Colors.red.shade50,
            radius: 25,
            child : IconButton(
              icon: const Icon(Icons.location_on),
              color: Colors.red,
              onPressed: () {},
            )
          ),
        ],
      )
    );
  }
}