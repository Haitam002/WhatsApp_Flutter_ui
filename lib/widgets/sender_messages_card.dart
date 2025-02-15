import 'package:flutter/material.dart';
import 'package:whatsapp_flutter_ui/colors.dart';

class SenderMessagesCard extends StatelessWidget {
  const SenderMessagesCard(
      {super.key, required this.message, required this.date});

  final String message;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
            elevation: 1,
            color: senderMessageColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 5,
                    bottom: 20,
                  ),
                  child: Text(
                    message,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 4,
                  child: Row(
                    children: [
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white60,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.done_all,
                        size: 20,
                        color: Colors.white60,
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
