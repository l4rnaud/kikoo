/*
Author : Lesly ARNAUD (l4rnaud)
Widget : Fenetre d'affichage des messages prédéfinis a envoyer
*/
import 'package:flutter/material.dart';

class MessageSimpleDialog extends StatelessWidget {
  const MessageSimpleDialog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Envoyer un message'),      
      children: [
        Divider(
          thickness: 2.5,
          indent: 10.0,
          endIndent: 10.0,
        ),
        SimpleDialogOption(
          onPressed: () {
            
          },
          child: const Text('Appelle moi'),
        ),
        Divider(
          thickness: 0.8,
          indent: 10.0,
          endIndent: 10.0,
        ),
        SimpleDialogOption(
          onPressed: () {
            
          },
          child: const Text('Viens me chercher'),
        ),
        Divider(
          thickness: 0.8,
          indent: 10.0,
          endIndent: 10.0,
        ),
        SimpleDialogOption(
          onPressed: () {
            
          },
          child: const Text('Je suis rentré(e)'),
        ),
      ],
    );
  }
}