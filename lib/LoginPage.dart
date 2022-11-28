import 'package:figmaaap/App.dart';
import 'package:figmaaap/daftar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final mailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                      ),
                      controller: mailController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your password',
                      ),
                      controller: passController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Color.fromRGBO(255, 204, 51, 1)),
                        onPressed: () {
                          if (mailController.text == "E41210598@gmail.com" &&
                              passController.text == "123") {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => App()));
                          } else {
                            print("username dan password salah");
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("username dan password salah")));
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Color.fromRGBO(255, 204, 51, 1)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => register()));
                        },
                        child: const Text('Register'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
