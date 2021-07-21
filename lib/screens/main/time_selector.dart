import 'package:flutter/material.dart';

class TimeSelector extends StatelessWidget {
  const TimeSelector({
    Key? key,
    this.scrollDirection = Axis.horizontal,
  }) : super(key: key);

  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrollDirection,
      children: const [
        SizedBox(
          width: 200,
          child: ListTile(
            dense: true,
            title: Text(
              "This Month",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            selected: true,
            selectedTileColor: Colors.orange,
          ),
        ),
        SizedBox(
          width: 200,
          child: ListTile(
            dense: true,
            title: Text("Last Month"),
          ),
        ),
        SizedBox(
          width: 200,
          child: ListTile(
            dense: true,
            title: Text("Last 6 Months"),
          ),
        ),
        SizedBox(
          width: 200,
          child: ListTile(
            dense: true,
            title: Text("Last Year"),
          ),
        )
      ],
    );
  }
}
