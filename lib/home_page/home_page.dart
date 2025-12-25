import 'package:flutter/material.dart';
import 'package:flutter_task/widget/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.black
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome",style: TextStyle(color: Colors.white.withOpacity(0.7)),),
                      Text("John Smith",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFF2BE2C),
                    ),
                    child: Icon(Icons.notifications_active_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              //alignment: Alignment.center, // text center me aayega
              children: [
                Image.asset(
                  "assets/images/image.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Text(
                  "Create a Studio",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Positioned(
                  top: 20,
                  child: Text(
                    "Visualization",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Category",style: TextStyle(color: Colors.white),),
                Text("SeeAll",style: TextStyle(color: Colors.white.withOpacity(0.5)),)
              ],
            ),
            SizedBox(
              height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return CategoryButton();
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
