/*
Author : Lesly ARNAUD (l4rnaud)
Widget : Creation d'une carte de contact
*/
import 'package:flutter/material.dart';
import 'package:kikoo/src/models/Contact.dart';
import 'package:kikoo/src/widgets/CardContactActions.dart';

class CardContact extends StatefulWidget {
  const CardContact({required this.contact});

  final Contact contact;

  @override
  _CardContactState createState() => _CardContactState();
}

class _CardContactState extends State<CardContact> {
  String lastContact = '';

  void _handleLastContact(String newValue) {
    setState(() {
      lastContact = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
            decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: const Text('AL'),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.contact.nom,
                          ),
                          Text('Mobile :  ' +
                              widget.contact.mobile +
                              '\nDernier contact : ')
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )),
        CardContactActions(contact: widget.contact, dateContact: lastContact, onChanged: _handleLastContact)
      ],
    );
  }
}
