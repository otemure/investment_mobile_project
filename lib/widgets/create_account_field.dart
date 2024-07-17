import 'package:flutter/material.dart';

class Createaccountfield extends StatelessWidget {
  const Createaccountfield({
    super.key,
    required TextEditingController nameController, required this.label
  }) : _nameController = nameController;

  final TextEditingController _nameController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: _nameController,
        decoration:  InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        )
    );
  }
}