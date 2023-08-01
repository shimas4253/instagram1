import 'package:flutter/material.dart';
import 'package:instagram1/navigation_bar.dart';

import '../data_base/data_model/data_model_type.dart';
import '../data_base/db_functions/functions.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _userNameController = TextEditingController();

  final _passwordConroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 23, right: 23),
                child: Container(
                  height: 50,
                  width: 500,
                  child: TextFormField(
                    controller: _userNameController,
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'value is Empty';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Colors.grey, width: 1))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 23, right: 23),
                child: Container(
                  height: 50,
                  width: 500,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'value is empty';
                      } else {
                        return null;
                      }
                    },
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: _passwordConroller,
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        hintText: 'password',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Colors.grey, width: 1))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 23, right: 23),
                child: Container(
                    height: 50,
                    width: 500,
                    child: ElevatedButton(onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        checkLogin(context);
                      } else {
                        return null;
                      }
                    }, child: Text('Log In'))),
              )
            ],
          ),
        ),
      ),
    );
  }

  checkLogin(BuildContext cntx) async {
    final _email = _userNameController.text;
    final _password = _passwordConroller.text;
    if (_email.contains('@gmail') || _password.length >= 5) {
      final _student=StudentModel(Email: _email, password: _password);
      addStudent(_student);
      Navigator.of(cntx).pushReplacement(
          MaterialPageRoute(builder: (contex) => welcomePage()));
    } else {
      ScaffoldMessenger.of(cntx).showSnackBar(
          SnackBar(
              content: Text('Enter a valid email and password'),
          backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));
    }
  }
}
