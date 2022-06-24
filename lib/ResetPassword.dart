import 'package:flutter/material.dart';

import 'SuccessPage.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: resetpassword(),
    );
  }
}

class resetpassword extends StatefulWidget {
  @override
  State<resetpassword> createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
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
              "Reset Password",
              style: TextStyle(fontSize: 32),
            ),
            Text(
              "Reset Code was sent to your mail-id. Please enter the code and create a new password",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              "Reset Code",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "****"),
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
              decoration: InputDecoration(hintText: "Enter New password here"),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: "Re-Enter your password here"),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Center(
                child: InkWell(
                  onTap: openSuccessPage,
                  child: Expanded(
                      child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Color(0xfff96060),
                      ),
                      child: Text(
                        "Change Password",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openSuccessPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PasswordChanged()));
  }
}
