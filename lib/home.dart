import 'package:flutter/material.dart';
import 'package:release_note/docs/release_note.dart';
import 'package:release_note/note_block.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "ARPI Release Note",
                  style: TextStyle(
                    fontSize: 52,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                for (Map<String, dynamic> note in releaseNote)
                  NoteBlock(note: note),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return Dialog(
                              child: SizedBox(
                                width: 500,
                                height: 500,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "노트 작성",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Text("버전"),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Text("내용"),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      TextFormField(
                                        minLines: 5,
                                        maxLines: 10,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Text("취소")),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Text("작성")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: const Text("노트 추가"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
