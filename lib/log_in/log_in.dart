import 'package:educatonal_project/home/home_screen.dart';
import 'package:educatonal_project/log_in/controller/login_conroller.dart';
import 'package:educatonal_project/signUp/signUp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
 LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value){
        if(value!.isEmpty){
        return "Please Enter Your Email";

        }},
                decoration: const InputDecoration(
                 // hintText: "Enter email",
                  labelText: "Enter Email",
                  border: InputBorder.none,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 4,
                      color: Colors.blue
                    )
                  ),
              focusedBorder : OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 4,
                          color: Colors.blue
                      )
                  ),
                ),

              ),
              const SizedBox(height: 20,),
              TextFormField(
                obscureText: controller.isTrue.value,
                validator: (value){
                  if(value!.isEmpty){
                    return "Please Enter Your Password";

                  }},
                decoration:  InputDecoration(
                  // hintText: "Enter email",
                  labelText: "Enter Password",
                  border: InputBorder.none,

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 4,
                          color: Colors.blue
                      )
                  ),
                  focusedBorder : OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 4,
                          color: Colors.blue
                      )
                  ),
                  suffixIcon: controller.isTrue.value?Icon(Icons.remove_red_eye):Icon(Iconsax.eye_slash5),
                ),

              ),
              const SizedBox(height: 30,),
              SizedBox(
                height: 60,
                  width: double.infinity,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 6,
                      backgroundColor: Colors.green
                    ),

                      onPressed: (){
                      if(formKey.currentState!.validate()){
                       Get.to(const HomeScreen());


                      }





                      }, child: const Text("Login",style: TextStyle(fontSize: 26),))),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                },
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(text: "Don't have account? "),
                    TextSpan(text: "SingUp Now",style: TextStyle(color: Colors.blue)),
                  ]
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
