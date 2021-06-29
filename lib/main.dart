import 'package:flutter/material.dart';
import 'package:kikoo/src/widgets/CardContact.dart';
import 'package:kikoo/src/models/Contact.dart';
import 'package:kikoo/src/widgets/Drawer.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kikoo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KIKOO'),
      ),
      body: ListView(padding: EdgeInsets.zero, children: [
        CardContact(contact: Contact(nom: 'Papa', mobile: '0692112233')),
        CardContact(contact: Contact(nom: 'Maman', mobile: '0692773338')),
        CardContact(contact: Contact(nom: 'Angélique', mobile: '0692012345')),
      ]),
      drawer: MyDrawer(),
    );
  }
}
