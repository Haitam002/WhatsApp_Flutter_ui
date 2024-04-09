import 'package:flutter/material.dart';
import 'package:whatsapp_flutter_ui/info_linst.dart';
import 'package:whatsapp_flutter_ui/widgets/my_messages_card.dart';
import 'package:whatsapp_flutter_ui/widgets/sender_messages_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessagesCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessagesCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
