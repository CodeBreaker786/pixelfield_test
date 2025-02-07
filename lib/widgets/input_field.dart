import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextEditingController controller;

  InputField({
    required this.label,
    required this.isPassword,
    required this.controller,
  });

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: widget.controller,
          obscureText: widget.isPassword ? _obscurePassword : false,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            label: Text(
              widget.label,
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.secondary),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.secondary),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}