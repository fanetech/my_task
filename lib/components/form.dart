import 'package:flutter/material.dart';

class FormUi extends StatefulWidget {
  final String data;

  const FormUi({super.key, required this.data});

  @override
  State<FormUi> createState() => _FormUiState();
}

class _FormUiState extends State<FormUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.data,
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'formulaire de tache',
            ),
          ],
        ),
      ),
    );
  }
}
