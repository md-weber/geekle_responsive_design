import 'package:flutter/material.dart';
import 'package:responsive_design/utils/demo_data.dart';

class DreamSelector extends StatelessWidget {
  const DreamSelector({
    Key? key,
    required this.scrollDirection
  }) : super(key: key);

  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: scrollDirection,
      itemBuilder: (BuildContext context, int index) {
        final currentDream = dreams[index];
        final textStyle = index == 0
            ? const TextStyle(color: Colors.white)
            : const TextStyle(color: Colors.black);
        return SizedBox(
          width: 200,
          child: ListTile(
            dense: true,
            selected: index == 0,
            selectedTileColor: Colors.blue,
            title: Text(currentDream.title, style: textStyle),
            subtitle: Text(
              currentDream.subTitle,
              style: textStyle,
            ),
          ),
        );
      },
      itemCount: dreams.length,
    );
  }
}
