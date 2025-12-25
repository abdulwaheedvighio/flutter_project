import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {

  final TextEditingController controller;
  final String hintText;

  const TextFormFieldWidget({super.key, required this.controller, required this.hintText});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.white,fontSize: 14),
            fillColor: Color(0xFF2D332D),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.white,
              ),

            )
        ),
      ),
    );
  }
}
