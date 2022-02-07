import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: parseText(
            'Hello, my name is *Sirawit Pratoomsuwan*, also known as *Art*.'
            'I am a *Fullstack Developer*, and I am currently studying at *SIT@KMUTT*.'
            '\n\n\nMy interested field is *Mobile App Development*, and I am currently working on *Flutter*.'
            '\nI am also interested in *Machine Learning*, and I am currently working on *TensorFlow*.',
          ),
        ),
      ),
    );
  }

  /// The `MarkdownParser` class parses markdown text and returns a list of `TextSpan` objects.
  List<TextSpan> parseText(text) {
    List<TextSpan> textSpan = <TextSpan>[];
    String tmp = "";
    bool isSpecialText = false;
    bool isEscape = false;
    for (int i = 0; i < text.length; i++) {
      if (text[i] == '\\') {
        isEscape = true;
      } else if (text[i] == '*' && !isEscape) {
        isSpecialText = !isSpecialText;
        if (isSpecialText) {
          textSpan.add(TextSpan(text: tmp));
          tmp = "";
        } else {
          textSpan.add(
            TextSpan(
              text: tmp,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
          tmp = "";
        }
      } else {
        tmp += text[i];
      }

      if (isEscape) isEscape = false;
    }
    return textSpan;
  }
}
