import 'package:flutter/material.dart';
import 'package:newtotolist/ResetPassword.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: forgotpasword(),
    );
  }
}

class forgotpasword extends StatefulWidget {
  @override
  State<forgotpasword> createState() => _forgotpaswordState();
}

class _forgotpaswordState extends State<forgotpasword> {
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
              "Forgot Password",
              style: TextStyle(fontSize: 32),
            ),
            Text(
              "Please enter mail id to reset your password",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              "Mail ID",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "youcantseeme@gmail.com",
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: InkWell(
                onTap: openResetPassword,
                child: Expanded(
                    child: Center(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color(0xfff96060),
                    ),
                    child: Text(
                      "Send Request",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openResetPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResetPassword()));
  }
}
