import 'package:flutter/material.dart';
import 'package:signinwith_todo/uihelper/custome_field.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool ispassword = false;
  bool ischeckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 229, 236, 236),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(19)),
            height: 500,
            width: 440,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text(
                    "Login Our App",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  )),
                  Text("Email : "),
                  CustomTextField(
                    suffixIcon: Icons.email,
                    controller: email,
                    hintText: "Enter Email",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Password : "),
                  CustomTextField(
                    suffixIcon:
                        ispassword ? Icons.visibility : Icons.visibility_off,
                    controller: password,
                    hintText: "Enter Password",
                    obscureText: !ispassword,
                    onTapSuffixIcon: () {
                      ispassword = !ispassword;
                      setState(() {});
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                          value: ischeckbox,
                          onChanged: (bool? newvalue) {
                            setState(() {
                              ischeckbox = newvalue!;
                            });
                          }),
                      Text("Remember"),
                      SizedBox(
                        width: 150,
                      ),
                      InkWell(
                          mouseCursor: SystemMouseCursors.click,
                          child: Text(
                            "Forget Password",
                            style: TextStyle(color: Colors.blue),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(240, 6, 132, 235)),
                          onPressed: () {},
                          child: Text(
                            "Sign-In",
                            style: TextStyle(color: Colors.white),
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 12,
                          endIndent: 12,
                          color: Colors.blue,
                          thickness: 2,
                        ),
                      ),
                      Text("OR"),
                      Expanded(
                        child: Divider(
                          indent: 12,
                          endIndent: 12,
                          color: Colors.blue,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign-Up With Google",
                            style: TextStyle(
                                color: Color.fromARGB(255, 243, 33, 226)),
                          )),
                      OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign-Up With Facebook",
                            style: TextStyle(
                                color: Color.fromARGB(255, 243, 33, 226)),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          " Sign Up",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
