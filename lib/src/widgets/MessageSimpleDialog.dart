/*
Author : Lesly ARNAUD (l4rnaud)
Widget : Fenetre d'affichage des messages prédéfinis a envoyer
*/
import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';

class MessageSimpleDialog extends StatelessWidget {
  const MessageSimpleDialog({required this.contactNumber});

  final String contactNumber;

  void _sendSMS(String message) async {
    final Telephony telephony = Telephony.instance;
    final bool? result = await telephony.requestSmsPermissions;
    if(result != null && result){
      final SmsSendStatusListener listener = (SendStatus status) {
        if (status == SendStatus.SENT) {
          print('SMS SENT');
        }
      };
      print('SMS SENDING..');
      telephony.sendSms(to: contactNumber, message: message, statusListener: listener);
    }
  }

  @override
  Widget build(BuildContext context) {
    const callme = 'Appelle moi';
    const takeme = 'Viens me chercher';
    const iamthere = 'Je suis rentré(e)';
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
            _sendSMS(callme);
            Navigator.pop(context, new DateTime.now());
          },
          child: const Text(callme),
        ),
        Divider(
          thickness: 0.8,
          indent: 10.0,
          endIndent: 10.0,
        ),
        SimpleDialogOption(
          onPressed: () {
            _sendSMS(takeme);
            Navigator.pop(context, new DateTime.now());
          },
          child: const Text(takeme),
        ),
        Divider(
          thickness: 0.8,
          indent: 10.0,
          endIndent: 10.0,
        ),
        SimpleDialogOption(
          onPressed: () {
            _sendSMS(iamthere);
            Navigator.pop(context, new DateTime.now());
          },
          child: const Text(iamthere),
        ),
      ],
    );
  }
}
