import 'dart:io';
import 'package:babynative/forgot_password.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'learning_screen.dart';
import 'registerPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'userclass.dart';
import 'package:flutter/services.dart';
import 'package:sweetalert/sweetalert.dart';


class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> with TickerProviderStateMixin {

  bool showspin=false;
  final _auth= FirebaseAuth.instance;
  String email;
  String password;


  AnimationController controller;
  Animation animation;
  Animation animation2;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 280), upperBound: 1.0);

    controller.addListener(() {
      setState(() {});
    });

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutCirc,
    );
    animation2 = ColorTween(begin: Colors.tealAccent, end: Colors.blue[300])
        .animate(controller);

    controller.forward();

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        controller.reverse(from: 60);
      else if (status == AnimationStatus.dismissed) controller.forward();
    });


  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/loginback.jpeg"),
                    fit: BoxFit.cover,
                  )),
              child: ModalProgressHUD(inAsyncCall: showspin,
                child: Padding(
                  padding: const EdgeInsets.only(top:35.0,bottom:10),
                  child: Column(
                    children: [
                      Expanded(flex:6,
                        child: Column(
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image(

                                    image: AssetImage('images/b3.png')),
                              ),
                              Expanded(
                                child: Image(

                                    image: AssetImage('images/text.png')),
                              ),
                              Expanded(
                                child: Image(

                                    image: AssetImage('images/cat.png')),
                              ),
                            ],
                          ),
                          Text(
                            '"Begin as a Baby, Become a Native!"',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ],),
                      ),

                      Expanded(flex:5,
                        child: Column(
                          children: [
                          TextField(
                            onChanged: (value) {
                              email=value;
                            },
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              prefixIcon:Icon(Icons.mail),
                              hintText: 'Your mail address',
                              hintStyle: TextStyle(fontStyle: FontStyle.italic),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent, width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextField(
                            onChanged: (value) {
                              password=value;
                            },

                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              prefixIcon:Icon(Icons.security),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent, width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.lightBlue, width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                            ),
                          ),
                        ],),
                      ),

                      Expanded(flex:4,
                        child: Column(children: [
                          SizedBox(
                            height: 20+animation.value * 10 ,
                          ),
                          RaisedButton(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            color: animation2.value,
                            child: Container(
                                width: -animation.value * 10 + 100,
                                height: -animation.value * 10 + 65,
                                child: Center(child: Text('Let\'s Begin!'))),
                            onPressed: () async {

                              setState(() {
                                showspin=true;
                              });
                              try {
                                final user = await _auth.signInWithEmailAndPassword(
                                    email: email, password: password);
                                setState(() {
                                  showspin=false;
                                });
                                if (user != null) {

                                  userclass.user=email;
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return LearningPage();
                                      }));
                                }

                              }
                              catch(e){

                                SweetAlert.show(context,

                                    subtitle: e.message,
                                    style: SweetAlertStyle.error);



                                setState(() {
                                  showspin=false;
                                });







                              }


                            },
                          ),
                        ],),
                      ),


                      Expanded(flex:4,
                        child: Column(
                          children: [
                            FlatButton(
                              onPressed: (){


                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return registerPage();}));

                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1.3,
                                        color: Colors.grey ,
                                      ),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                                  height: 25,
                                  width: 140,
                                  child: Center(
                                      child: Text(
                                        'Yeni Hesap Aç',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.grey),
                                      ))),
                            ),
                            FlatButton(
                              onPressed: (){

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return forgot();}));
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1.3,
                                        color: Colors.grey ,
                                      ),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                                  height: 25,
                                  width: 140,
                                  child: Center(
                                      child: Text(
                                        'Şifremi Unuttum',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.grey),
                                      ))),
                            ),
                          ],),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
