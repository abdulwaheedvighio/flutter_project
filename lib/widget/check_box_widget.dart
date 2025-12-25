import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {

  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isCheck,
            onChanged: (isCheck){

            }
        ),
        Text("Remember me",style: TextStyle(color: Colors.white,fontSize: 13),),
      ],
    );
  }
}
