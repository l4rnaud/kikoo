import 'package:flutter/material.dart';
import 'package:kikoo/src/widgets/CardContact.dart';
import 'package:kikoo/src/models/Contact.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kikoo',
      home: Scaffold(        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,   
          children: [
            CardContact(contact: Contact(nom: 'Papa',mobile: '0692112233')),
            CardContact(contact: Contact(nom: 'Maman',mobile: '0692773338')),
            CardContact(contact: Contact(nom: 'Angélique',mobile: '0692012345')),
        ]),
      ),
    );
  }
}
