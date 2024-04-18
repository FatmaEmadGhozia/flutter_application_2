import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/forget_password.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/my-putton.dart';
// import 'loginPage.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});

  // This widget is the root of your application.

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: [
          SizedBox(height: 50),
          Image.network(
            "assets/images/nature.jpg",
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 10),
          Text(
            'Welcome back to login page !',
            style: TextStyle(
              color: Color.fromARGB(175, 6, 136, 10),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 128, 127, 127)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(175, 6, 136, 10)),
                ),
                hintText: 'Username',
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 128, 127, 127)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(175, 6, 136, 10)),
                ),
                hintText: 'password',
              ),
              obscureText: true,
              obscuringCharacter: "*",
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Text('Forget Password ?',
                //    style:  TextStyle(color: Colors.grey[700]
                //    ,fontSize: 16,),

                //   ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassPage()),
                      );
                    },
                    child: const Text(
                      "Have You Forget Password?",
                      style: TextStyle(
                          color: Color.fromARGB(174, 5, 117, 9),
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 141, 136, 136),
                          fontSize: 16),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 25),
          MyButton(
            onTap: signUserIn,
          )
        ],
      ),
    )));
  }
}
