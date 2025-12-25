import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  const CategoryButton({super.key});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFF2BE2C),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset("assets/images/icon1.png"),
        ),
        SizedBox(height: 5,),
        Text("Car Detail",style: TextStyle(color: Colors.white,fontSize: 10),),
      ],
    );
  }
}
