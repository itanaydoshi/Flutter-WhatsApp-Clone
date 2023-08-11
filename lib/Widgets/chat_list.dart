import 'package:flutter/material.dart';
import 'package:whatsappclone/Widgets/my_message_card.dart';
import 'package:whatsappclone/Widgets/sender_message_card.dart';
import 'package:whatsappclone/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        return SenderMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString());
        // Send Message -> card
      },
    );
  }
}
