import 'package:flutter/material.dart';
import 'package:newtotolist/ForgotPassword.dart';
import 'package:newtotolist/HomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
      theme: ThemeData(fontFamily: 'avenir'),
    );
  }
}

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome Back!!",
              style: TextStyle(fontSize: 32),
            ),
            Text(
              "Sign In To Continue..",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              "User Name",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Jhon Cena"),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter your password here"),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: openForgotPassword,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 16),
                    ))
              ],
            ),
            Expanded(
                child: Center(
              child: InkWell(
                onTap: openhomepage,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xfff96060),
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void openForgotPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgotPassword()));
  }

  void openhomepage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => homepage()));
  }
}
