import 'package:flutter/material.dart';
import 'package:flutter_basic_app/chatbot/chat_bot.dart';
import 'package:flutter_basic_app/preview_page.dart';

class ChatBotPage extends StatelessWidget {
  const ChatBotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void gotoPreview(String title, Widget previewWidget, String filePath){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext ctx)=>  PreviewPage(
              title: title,
              previewWidget: previewWidget,
              filePath: filePath,
            ),
          )
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChatBot"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.messenger_outline),
            title: const Text("ChatBot"),
            subtitle: const Text("You can chat with chat gpt"),
            onTap: (){
              gotoPreview("ChatBot",  const MyApk(), "../lib/chatbot/chat_bot.dart");
            },
          ),
          const Divider(
            height: 10,
            color: Colors.black54,
          ),

        ],

      ),

    );
  }
}
