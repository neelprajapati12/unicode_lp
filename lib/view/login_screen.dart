import 'package:flutter/material.dart';
import 'package:unicode_lp_tasks/functions/authfunctions.dart';
import 'package:unicode_lp_tasks/helper/util.dart';
import 'package:unicode_lp_tasks/view/home.dart';
import 'package:unicode_lp_tasks/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final confirmpassword = TextEditingController();
  bool visible = true;
  bool selection = true;
  final formkey = GlobalKey<FormState>();
  String? username;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                vSize(10),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/welcome.png"),
                  )),
                ),
                vSize(25),
                selection
                    ? Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextFormField(
                                  controller: name,
                                  labelText: "Enter Your Name",
                                  errortext: "Pls Enter Your Name"),
                            ),
                          ],
                        ),
                      )
                    : Offstage(),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextFormField(
                            controller: email,
                            labelText: "Enter Email ID",
                            errortext: "Pls enter valid email address"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: password,
                          obscureText: visible,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(context).primaryColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.grey)),
                            labelText: "Enter Your Password",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  visible = !visible;
                                });
                              },
                              child: visible
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter valid password";
                            }
                          },
                        ),
                      ),
                      vSize(30),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            formkey.currentState!.save();
                            selection
                                ? signup(email.text, password.text)
                                : signin(email.text, password.text);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          }
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text(
                          selection ? "SIGN UP" : "LOG IN",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        selection = !selection;
                      });
                    },
                    child: Text(
                      selection ? "Already a User?" : "New User?",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
