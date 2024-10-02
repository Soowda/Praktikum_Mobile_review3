import 'package:flutter/material.dart';

class CustumTextField extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  String? label, hint;

  CustumTextField(
      {super.key,
      required this.controller,
      required this.label,
      required this.hint});

  @override
  State<CustumTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustumTextField> {
  bool obsecureText = false;

  @override
  Widget build(BuildContext context) {
    if (widget.label == "Password") {
      obsecureText = true;
    }
    return SizedBox(
      width: 400,
      // height: 200,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        obscureText: obsecureText,
      ),
    );
  }
}
