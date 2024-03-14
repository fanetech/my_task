import 'package:flutter/material.dart';

class FormUi extends StatefulWidget {
  final String data;

  const FormUi({super.key, required this.data});

  @override
  State<FormUi> createState() => _FormUiState();
}

class _FormUiState extends State<FormUi> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.data,
          ),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Entrer votre tache',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: () {
                    String newString = _controller.text;
                    // if (newString.isNotEmpty) {
                    //   widget.onAddTask(newString);
                    //   _controller.clear();
                    // }
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Tache enregistré avec succès')),
                      );
                    }
                  },
                  child: const Text('Enregistrer'),
                ),
              ),
            ],
          ),
        ));
  }
}
