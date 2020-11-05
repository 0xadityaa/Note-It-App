import 'package:Blog_It/views/Signup.dart';
import 'package:flutter/material.dart';
import 'package:Blog_It/views/home.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Note ",
              style: TextStyle(fontSize: 22),
            ),
            Text(
              "It",
              style: TextStyle(fontSize: 22, color: Colors.blue),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Login',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Colors.blue),
          ),SizedBox(
            height: 30,
          ),
          Container(
            height: 400,
            width: 400,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CachedNetworkImage(imageUrl: 'https://image.freepik.com/free-vector/sign-page-abstract-concept-illustration-enter-application-mobile-screen-user-login-form-website-page-interface-ui-new-profile-registration-email-account_335657-936.jpg')),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.blue,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter your Email'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.blue,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter your Password'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            color: Colors.white,
            child: Text(
              "Lets Goo",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "-OR-",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignupPage()));
            },
            child: Text('Dont have an Account? Create an Account',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),))
        ],
      ),
    );
  }
}