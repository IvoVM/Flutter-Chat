import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(20),
    );

    final textControl = TextEditingController();

    return TextFormField(
      controller: textControl,
      decoration: InputDecoration(
        hintText: 'Pls end your message with a ?',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            final stringValue = textControl.value.text;
          },
          icon: const Icon(Icons.send_outlined),
        ),
      ),
      onFieldSubmitted: (value) {
        print('${value}');
        textControl.clear();
      },
    );
  }
}
