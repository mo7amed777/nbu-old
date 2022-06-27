import 'package:demo/view/screens/home.dart';
import 'package:demo/view/screens/onboard/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/input_field.dart';
import '../../widgets/my_button.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  bool showPassword = true;
  bool showConfirmPassword = true;

  bool remebered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InputField(
                  controller: usernameController,
                  label: 'Username',
                  secured: showPassword,
                  prefex: Icon(
                    Icons.person,
                    color: Colors.green[800],
                    size: 25,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InputField(
                controller: passwordController,
                label: 'Password',
                secured: showPassword,
                prefex: Icon(
                  Icons.lock,
                  color: Colors.green[800],
                  size: 22,
                ),
                suffix: IconButton(
                  icon: Icon(
                    showPassword ? Icons.visibility_off : Icons.visibility,
                    color: showPassword ? Colors.grey : Colors.green[800],
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InputField(
                controller: confirmpasswordController,
                label: 'Confirm Password',
                secured: showConfirmPassword,
                prefex: Icon(
                  Icons.lock,
                  color: Colors.green[800],
                  size: 22,
                ),
                suffix: IconButton(
                  icon: Icon(
                    showConfirmPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color:
                        showConfirmPassword ? Colors.grey : Colors.green[800],
                  ),
                  onPressed: () {
                    setState(() {
                      showConfirmPassword = !showConfirmPassword;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 50),
            MyButton(
              label: 'Register',
              callback: () {
                Get.to(Home());
              },
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account !',
                  style: TextStyle(color: Colors.green[800]),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(Login());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 16),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
