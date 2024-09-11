class loginmodel {

  final String username;
  final String password;


  loginmodel({
    required this.username,
    required this.password,


  });

  Map<dynamic, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
  factory loginmodel.fromJson(Map<dynamic, dynamic> json) => loginmodel(

    username: json["username"],
    password: json['password'],


  );


}