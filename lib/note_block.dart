import 'package:flutter/material.dart';

class NoteBlock extends StatelessWidget {
  final Map<String, dynamic> note;

  const NoteBlock({required this.note, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Text("${note["version"]}"),
          Text("${note["content"]}"),
        ],
      ),
    );
  }
}
