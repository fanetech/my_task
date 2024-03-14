import 'package:flutter/material.dart';

class ShowTask extends StatefulWidget {
  final List<String> listData;

  const ShowTask({super.key, required this.listData});

  @override
  State<ShowTask> createState() => _ShowTaskState();
}

class _ShowTaskState extends State<ShowTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: getListView(widget.listData),
    );
  }
}

Widget getListView(List<String> items) {
  var listView = ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      return ListTile(
        leading: const Icon(Icons.arrow_right),
        title: Text(items[index]),
        onTap: () {
          debugPrint('${items[index]} was tapped');
        },
      );
    },
  );
  return listView;
}
