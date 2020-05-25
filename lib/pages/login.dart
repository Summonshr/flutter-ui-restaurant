import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: height / 1.7,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0)),
                color: Colors.yellow.shade100,
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('./images/background.png'))),
            child: Column(
              children: <Widget>[
                Spacer(),
                Text('Kisan Foods',
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
                Text('Delivery App',
                    style: TextStyle(color: Colors.grey.shade700)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Login',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width: 50),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Signup',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Email Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon:
                              Icon(Icons.mail, color: Colors.grey.shade500)),
                    ),
                    SizedBox(height: 20),
                    Text('Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.no_encryption,
                              color: Colors.grey.shade500)),
                    ),
                    SizedBox(height: 20.0),
                    Text("Forgot Password?",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: height / 15,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.yellow.shade700,
                          onPressed: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          child:
                              Text('Login', style: TextStyle(fontSize: 20.0))),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
