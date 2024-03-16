import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_task/common/taskObject.dart';

class ShowTask extends StatefulWidget {
  final List<TaskObject> listData;

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

Widget getListView(List<TaskObject> items) {
  var listView = ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      if (items[index].name != null) {
        return CheckboxListTile(
          title: Text(items[index].name),
          subtitle: Text(DateFormat('d/M/y').format(DateTime.now()).toString()),
          value: items[index].status,
          onChanged: (bool? value) {},
          secondary: const Icon(Icons.task_alt_rounded),
        );
      }
    },
  );
  return listView;
}
