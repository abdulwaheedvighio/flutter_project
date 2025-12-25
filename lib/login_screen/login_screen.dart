import 'package:flutter/material.dart';
import 'package:flutter_task/home_page/home_page.dart';
import 'package:flutter_task/widget/check_box_widget.dart';
import 'package:flutter_task/widget/text_form_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 120,),
              Image.asset("assets/images/project_logo.png"),
              Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50,),
                        Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(height: 15,),
                        TextFormFieldWidget(
                          controller: emailController,
                          hintText: "Enter email or phone number",

                        ),
                        SizedBox(height: 12,),
                        TextFormFieldWidget(
                            controller: passwordController,
                            hintText: "Password",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CheckBoxWidget(),
                            Text("Forget Password?",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF2BE2C),
                            ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Text("Login",style: TextStyle(color: Colors.black),)
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xFF2D332D),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white.withOpacity(0.3))
                          ),
                          child: Image.asset("assets/images/google_icon.png",width: 30,height: 20,),
                        ),
                        SizedBox(height: 40,),
                        Row(
                         // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account? ",style: TextStyle(color: Colors.white),),
                            Text("Sign Up",style: TextStyle(color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
