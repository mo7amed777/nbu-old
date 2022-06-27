import 'package:demo/view/screens/home.dart';
import 'package:demo/view/screens/onboard/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/input_field.dart';
import '../../widgets/my_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = true;

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
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forget username or password ?',
                  style: TextStyle(color: Colors.deepOrange),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Checkbox(
                      value: remebered,
                      activeColor: Colors.green[800],
                      onChanged: (checked) {
                        setState(() {
                          remebered = !remebered;
                        });
                      }),
                  Text(
                    'Remember Me',
                    style: TextStyle(color: Colors.green[800]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            MyButton(
              label: 'Login',
              callback: () {
                Get.to(Home());
              },
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account !',
                  style: TextStyle(color: Colors.green[800]),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(Register());
                    },
                    child: Text(
                      'Register',
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
