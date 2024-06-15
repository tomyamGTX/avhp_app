import 'package:flutter/material.dart';

class OutlineBorderForm extends StatefulWidget {
  final String helperText;
  final String value;
  final TextInputType keyType;

  const OutlineBorderForm({
    required this.keyType,
    required this.helperText,
    required this.value,
    super.key,
  });

  @override
  State<OutlineBorderForm> createState() => _OutlineBorderFormState();
}

class _OutlineBorderFormState extends State<OutlineBorderForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyType,
      initialValue: widget.value,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blue.shade100,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
          labelStyle: TextStyle(fontSize: 16, color: Colors.blue.shade900),
          labelText: widget.helperText),
    );
  }
}
