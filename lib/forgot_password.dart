import 'package:babynative/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:status_alert/status_alert.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:flutter/services.dart';

class forgot extends StatefulWidget {
  @override
  _forgotState createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  bool showspin=false;
  final _auth=FirebaseAuth.instance;
  String Email;
  String Password;
  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blueGrey[100],
        body: ModalProgressHUD(
          inAsyncCall: showspin,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                SizedBox(height: 50,),
                CircleAvatar(
                  backgroundImage: AssetImage('images/forgotcat.jpg'),
                  radius: 70,

                ),


                Column(
                  children: [


                    TextField(
                      onChanged: (value) {
                        Email=value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
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
                    SizedBox(
                      height: 20.0,
                    ),
                  Container(child: Center(child: Text("İnsan unutkandır, bunu unutma.")),)

                  ],
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  color: Colors.grey,
                  child: Container(
                      width:  120,
                      height:  40,
                      child: Center(child: Text('Gönder.'))),
                  onPressed: () async {
                    resetPassword(Email);

                    setState(() {
                      showspin = true;
                    });

                    SystemChannels.textInput.invokeMethod('TextInput.hide');
                    StatusAlert.show(
                      context,
                      duration: Duration(seconds: 3),
                      title: 'Gönderdik, mail kutunu kontrol et lütfen.',
                      configuration: IconConfiguration(icon: Icons.done),
                    );

                    Navigator.pop(context);

                    setState(() {
                      showspin = false;
                    });
                  }
                ),
                SizedBox(height: 60,),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
