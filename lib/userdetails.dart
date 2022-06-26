class UserDetails {
  String displayname;
  String email;
  String photourl;

  //constructor
  UserDetails({this.displayname, this.email, this.photourl});
  //we need to create map for data
  UserDetails.fromJson(Map<String, dynamic> json) {
    displayname = json["displayname"];
    photourl = json["photourl"];
    email = json["email"];
  }
  Map<String, dynamic> tojson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayname'] = this.displayname;
    data['email'] = this.email;
    data['photourl'] = this.photourl;

    return data;
  }
}
