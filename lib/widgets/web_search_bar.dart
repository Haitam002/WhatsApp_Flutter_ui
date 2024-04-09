import 'package:flutter/material.dart';
import 'package:whatsapp_flutter_ui/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: TextField(
          style: const TextStyle(
            color: Colors.white,
          ),
          cursorColor: dividerColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.search,
                color: Colors.grey,
                size: 20,
              ),
            ),
            hintText: 'Search or start new chat',
            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none),
            ),
            contentPadding: const EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
