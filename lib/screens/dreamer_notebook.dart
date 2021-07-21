import 'package:flutter/material.dart';
import 'package:responsive_design/screens/main/small_mode.dart';
import 'package:responsive_design/screens/main/wide_mode.dart';
import 'package:responsive_design/utils/device_info.dart';
import 'package:super_editor/super_editor.dart';

class DreamerNotebook extends StatefulWidget {
  static navigate(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DreamerNotebook()),
    );
  }

  const DreamerNotebook({Key? key}) : super(key: key);

  @override
  State<DreamerNotebook> createState() => _DreamerNotebookState();
}

class _DreamerNotebookState extends State<DreamerNotebook> {
  final myDoc = MutableDocument(
    nodes: [
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(text: 'A magic dream'),
        metadata: {
          'blockType': header1Attribution,
        },
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(text: 'I walked around the longest island.'),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(text: 'I walked around the longest island.'),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    final docEditor = DocumentEditor(document: myDoc);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dream Book"),
      ),
      body: buildDependingScreen(context, docEditor),
    );
  }

  Widget buildDependingScreen(BuildContext context, DocumentEditor docEditor) {
    ScreenType screenType = DeviceScreen.get(context);

    if (screenType == ScreenType.DESKTOP) return WideMode(docEditor: docEditor);
    return SmallMode(docEditor: docEditor);
  }
}
