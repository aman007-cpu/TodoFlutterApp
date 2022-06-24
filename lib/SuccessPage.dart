import 'package:flutter/material.dart';
import 'package:newtotolist/HomePage.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: PasswordChangedsuccesfully(),
    );
  }
}

class PasswordChangedsuccesfully extends StatefulWidget {
  @override
  State<PasswordChangedsuccesfully> createState() =>
      _PasswordChangedsuccesfullyState();
}

class _PasswordChangedsuccesfullyState
    extends State<PasswordChangedsuccesfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("asset/image/success.png"),
          )),
        ),
        Text(
          "Successfull!!",
          style: TextStyle(fontSize: 32),
        ),
        Text(
          "You have Successfully changed your password. please go back to login page for login.",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 70,
        ),
        Center(
          child: InkWell(
            onTap: openHomePage,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: Color(0xfff96060),
                ),
                child: Text(
                  "Continue->",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
        )
      ],
    ));
  }

  void openHomePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
