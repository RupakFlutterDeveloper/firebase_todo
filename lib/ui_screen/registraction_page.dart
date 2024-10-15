import 'package:flutter/material.dart';
import 'package:signinwith_todo/uihelper/custome_field.dart';

class RegistractionPage extends StatefulWidget {
  @override
  State<RegistractionPage> createState() => _RegistractionPageState();
}

class _RegistractionPageState extends State<RegistractionPage> {
  TextEditingController uName = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController re_En_password = TextEditingController();

  TextEditingController mobile_Number = TextEditingController(text: "+91 ");

  String? select_Gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 112, 214, 214),
        title: Text(
          "REGISTRACTION",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Color.fromARGB(255, 229, 236, 236),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Full Name :"),
                  CustomTextField(
                    controller: uName,
                    hintText: "Enter Your Full Name",
                    prefixIcon: Icons.person,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Email :"),
                  CustomTextField(
                    controller: email,
                    suffixIcon: Icons.email,
                    hintText: "Enter Email",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Password :"),
                  CustomTextField(
                    controller: password,
                    obscureText: true,
                    prefixIcon: Icons.password,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Re-Enter Password :"),
                  CustomTextField(
                    controller: re_En_password,
                    obscureText: true,
                    prefixIcon: Icons.password,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Mobile Number :"),
                  CustomTextField(
                    controller: mobile_Number,
                    keyboardType: TextInputType.number,
                    hintText: "Enter Number",
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                            title: Row(
                              children: [
                                Text("Male"),
                                Icon(
                                  Icons.male,
                                  size: 22,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                            value: "Male",
                            groupValue: select_Gender,
                            onChanged: (value) {
                              setState(() {
                                select_Gender = value;
                              });
                            }),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Row(
                            children: [
                              Text("Female"),
                              Icon(
                                Icons.female,
                                size: 22,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          value: "Female",
                          groupValue: select_Gender,
                          onChanged: (value) {
                            setState(() {
                              select_Gender = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text("Other"),
                          value: "Other",
                          groupValue: select_Gender,
                          onChanged: (value) {
                            setState(() {
                              select_Gender = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),

                  // Text("Gender :"),
                  // CustomTextField(
                  //   controller: gender,
                  //   hintText: "Enter Gender",
                  // ),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        child: Center(
                          child: Text(
                            "Sign-Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21),
                          ),
                        ),
                        width: double.infinity,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
