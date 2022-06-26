import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:newtotolist/userdetails.dart';

class Logincontroller with ChangeNotifier {
  //object
  var _googlesignIn = GoogleSignIn();
  GoogleSignInAccount googleSignInAccount;
  UserDetails userDetails;

  //function for login
  googleLogin() async {
    this.googleSignInAccount = await _googlesignIn.signIn();
    //inserting values to our user details model
    this.userDetails = new UserDetails(
      displayname: this.googleSignInAccount.displayName,
      email: this.googleSignInAccount.email,
      photourl: this.googleSignInAccount.photoUrl,
    );

    notifyListeners();
  }

  //logout
  logout() async {
    this.googleSignInAccount = await _googlesignIn.signOut();
    userDetails = null;
    notifyListeners();
  }
}
