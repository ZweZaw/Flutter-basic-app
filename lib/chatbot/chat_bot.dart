import 'package:flutter/material.dart';
import 'package:openai/openai.dart';
import 'package:openai_api/openai_api.dart';

void main() {
  OpenAI.initialize('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');
  runApp(ChatApp());
}

class ChatApp extends StatefulWidget {
  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  final TextEditingController _textController = TextEditingController();
  final List<String> _messages = [];
  final client = OpenaiClient(
    config: OpenaiConfig(
      apiKey: Env.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,   // your api key from openai.com
      baseUrl: Env.baseUrl,  // you can set your reverse proxy api
      // if you need access api through http proxy
    ),
  );

  void _handleSubmitted(String message) async {
    _textController.clear();
    setState(() {
      _messages.insert(0, message);
    });
    var response = await OpenAI.complete(prompt: message);
    var botMessage = response.choices.first.text;
    setState(() {
      _messages.insert(0, botMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatGPT ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ChatGPT '),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (_, int index) => _messages[index],
              ),
            ),
            const Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).primaryColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: const InputDecoration.collapsed(
                  hintText: 'Send a message',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
