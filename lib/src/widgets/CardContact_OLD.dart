/*
Author : Lesly ARNAUD (l4rnaud)
Widget : Creation d'une carte de contact
*/
import 'package:flutter/material.dart';
import 'package:kikoo/src/models/Contact.dart';

class CardContact extends StatelessWidget {
  const CardContact({required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: const Text('AH'),
            ),
            title: Text(contact.nom),
            subtitle: Text('Mobile :  ' + contact.mobile + '\nDernier contact : '),
            isThreeLine: true,
          ),
          Row(
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
        ])) 
    );
  }
}
