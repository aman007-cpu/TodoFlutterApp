import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GooglesignInController with ChangeNotifier {
  //object
  var _googlesignin = GoogleSignIn();
  GoogleSignInAccount googleSignInAccount;
  //function for log in
  login() async {
    this.googleSignInAccount = await _googlesignin.signIn();

    //call
    notifyListeners();
  }

  //function for logout
  logout() async {
    //empty value after logout
    this.googleSignInAccount = await _googlesignin.signOut();

    notifyListeners();
  }
}
