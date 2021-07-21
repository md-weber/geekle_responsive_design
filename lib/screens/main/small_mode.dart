import 'package:flutter/material.dart';
import 'package:responsive_design/screens/main/dream_selector.dart';
import 'package:responsive_design/screens/main/time_selector.dart';
import 'package:responsive_design/utils/styling.dart';
import 'package:super_editor/super_editor.dart';

class SmallMode extends StatelessWidget {
  final DocumentEditor docEditor;

  const SmallMode({Key? key, required this.docEditor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var verticalDensity = Theme.of(context).visualDensity.vertical;
    return Column(
      children: [
        const SizedBox(
          height: 50,
          child: TimeSelector(
            scrollDirection: Axis.horizontal,
          ),
        ),
        Divider(
          height: Insets.small + verticalDensity * 4,
        ),
        const SizedBox(
          height: 50,
          child: DreamSelector(
            scrollDirection: Axis.horizontal,
          ),
        ),
        Divider(
          height: Insets.small + verticalDensity * 4,
        ),
        Expanded(
          flex: 8,
          child: LayoutBuilder(
            builder: (context, constraints) => SuperEditor.standard(
              editor: docEditor,
              maxWidth: constraints.maxWidth,
              padding: EdgeInsets.all(
                Theme.of(context).visualDensity.horizontal + Insets.medium * 4,
              ),
            ),
          ),
        )
      ],
    );
  }
}
