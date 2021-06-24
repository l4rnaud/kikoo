/*
Author : Lesly ARNAUD (l4rnaud)
Widget : Creation d'une liste d'action
*/
import 'package:flutter/material.dart';
import 'package:kikoo/src/models/Contact.dart';
import 'package:kikoo/src/widgets/MessageSimpleDialog.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class CardContactActions extends StatelessWidget {
  const CardContactActions(
      {required this.contact,
      required this.dateContact,
      required this.onChanged});

  final Contact contact;

  final String dateContact;

  final ValueChanged<String> onChanged;

  void _handleContact(String lastContact) {
    onChanged(lastContact);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
        padding: EdgeInsets.only(top: 5, bottom: 5),
        decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade50,
              radius: 25,
              child: IconButton(
                icon: const Icon(Icons.call),
                color: Colors.blue,
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(contact.mobile);
                },
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.green.shade50,
              radius: 25,
              child: IconButton(
                icon: const Icon(Icons.sms),
                color: Colors.green,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return MessageSimpleDialog(
                            contactNumber: contact.mobile);
                      }).then((value) =>{print('Go: '+value), _handleContact(value)});                  
                },
              ),
            ),
            CircleAvatar(
                backgroundColor: Colors.red.shade50,
                radius: 25,
                child: IconButton(
                  icon: const Icon(Icons.location_on),
                  color: Colors.red,
                  onPressed: () {},
                )),
          ],
        ));
  }
}
