import 'package:flutter/material.dart';
import 'package:flutter_application_2/chat/presentation/components/message.dart';
import 'package:flutter_application_2/chat/presentation/components/other_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
            ),
          ),
        ),
        title: const Text('hola'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10, // 👈 solo 10 ítems
                itemBuilder: (context, index) {
                  if (index.isEven) {
                    return Messages();
                  } else {
                    return OtherMessages();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
