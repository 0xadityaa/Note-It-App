import 'package:Blog_It/views/home.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
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
            'Sign Up',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Colors.blue),
          ),SizedBox(
            height: 0,
          ),
          Container(
            height: 400,
            width: 400,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CachedNetworkImage(imageUrl: 'https://image.freepik.com/free-vector/adding-contacts-phone-metaphor-illustration_82574-8975.jpg')),
          SizedBox(
            height: 0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.blue,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter your Username'),
            ),
          ),SizedBox(
            height: 10,
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
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.blue,
            child: TextField(
              obscureText: true,
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
              "Create Account",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ],
      ),
    );
  }
}