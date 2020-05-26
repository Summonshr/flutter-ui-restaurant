import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
            color: Colors.yellow.shade800,
            image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage('./images/start.png'))),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('./images/logo.png')),
              Spacer(),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Text('Order & Let\'s eat \nHealthy food',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35.0))),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                          'Ask not what you can do for your \ncountry, Ask what\'s for lunch',
                          style: TextStyle(
                              color: Colors.grey, fontSize: 15.0, height: 1.5)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: height / 15,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.yellow.shade800,
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            child:
                                Text('Skip', style: TextStyle(fontSize: 20.0))),
                      ),
                    ),
                  ],
                ),
                height: height / 3,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
