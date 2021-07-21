import 'package:flutter/material.dart';
import 'package:responsive_design/screens/main/dream_selector.dart';
import 'package:responsive_design/screens/main/time_selector.dart';
import 'package:super_editor/super_editor.dart';

class SmallMode extends StatelessWidget {
  final DocumentEditor docEditor;

  const SmallMode({Key? key, required this.docEditor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
          child: TimeSelector(
            scrollDirection: Axis.horizontal,
          ),
        ),
        // TODO: Add a Devider
        const SizedBox(
          height: 50,
          child: DreamSelector(
            scrollDirection: Axis.horizontal,
          ),
        ),
        // TODO: Add a Devider
        Expanded(
          flex: 8,
          child: LayoutBuilder(
            builder: (context, constraints) => SuperEditor.standard(
              editor: docEditor,
              maxWidth: constraints.maxWidth,
              padding: EdgeInsets.all(
                // TODO: Replace 4 with a Inset
                Theme.of(context).visualDensity.horizontal + 4 * 4,
              ),
            ),
          ),
        )
      ],
    );
  }
}
