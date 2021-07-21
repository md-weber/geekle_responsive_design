import 'package:flutter/material.dart';
import 'package:responsive_design/screens/dreamer_notebook.dart';

class OwnDrawer extends StatelessWidget {
  const OwnDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('Responsive Feeling'),
        ),
        ListTile(
          dense: Theme.of(context).visualDensity.horizontal == -1.0,
          title: const Text('Visual Density Example'),
          onTap: () {
            DreamerNotebook.navigate(context);
          },
        )
      ],
    ));
  }
}
