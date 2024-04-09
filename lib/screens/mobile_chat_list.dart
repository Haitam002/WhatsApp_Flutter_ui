import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_flutter_ui/colors.dart';
import 'package:whatsapp_flutter_ui/info_linst.dart';
import 'package:whatsapp_flutter_ui/widgets/chat_list.dart';

class MobileChatList extends StatelessWidget {
  const MobileChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.video_call,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.call,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: ChatList()),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: appBarColor,
              border: Border(
                bottom: BorderSide(
                  color: dividerColor,
                ),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.attach_file,
                    color: Colors.white60,
                  ),
                ),
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: searchBarColor,
                      hintText: 'Type a message',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(left: 20),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.payment,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
