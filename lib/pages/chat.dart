import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        leading: Image.asset(
          "assets/images/logo.png",
        ),
        title: const Text(
          "Message Us",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.close))],
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),
          Container(
            decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: Colors.blue, width: 2))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 22,
                        ),
                        hintText: 'Write your message ...',
                        border: InputBorder.none),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send_rounded,
                      color: Colors.blue,
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
