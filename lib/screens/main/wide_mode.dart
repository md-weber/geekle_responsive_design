import 'package:flutter/material.dart';
import 'package:responsive_design/screens/main/dream_selector.dart';
import 'package:responsive_design/screens/main/time_selector.dart';
import 'package:responsive_design/utils/styling.dart';
import 'package:super_editor/super_editor.dart';

class WideMode extends StatelessWidget {
  const WideMode({
    Key? key,
    required this.docEditor,
  }) : super(key: key);

  final DocumentEditor docEditor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.grey),
              ),
            ),
            child: const TimeSelector(scrollDirection: Axis.vertical,),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(right: BorderSide(color: Colors.grey)),
            ),
            child: const DreamSelector(scrollDirection: Axis.vertical,),
          ),
        ),
        Expanded(
          flex: 4,
          child: LayoutBuilder(
            builder: (context, constraints) => SuperEditor.standard(
              editor: docEditor,
              maxWidth: constraints.maxWidth,
              padding: EdgeInsets.all(
                Theme.of(context).visualDensity.horizontal + Insets.medium * 4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
