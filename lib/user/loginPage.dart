import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
 const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Planner',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              obscureText: passwordVisible,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: InkWell(
                      onTap: _hiddenPassword(), child: const Icon(Icons.visibility))),
            ),
          ],
        ),
      ),
    );
  }

   _hiddenPassword() {
    /* if (passwordVisible == true) {
      passwordVisible == false;
    } else {
      passwordVisible == true;
    } */
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }
}
