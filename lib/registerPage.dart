import 'package:babynative/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:status_alert/status_alert.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:flutter/services.dart';
import 'package:sweetalert/sweetalert.dart';
class registerPage extends StatefulWidget {
  @override
  _registerPageState createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  bool showspin=false;
  final _auth=FirebaseAuth.instance;
  String Email;
  String Password;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(resizeToAvoidBottomInset: false,
        body: ModalProgressHUD(
          inAsyncCall: showspin,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                SizedBox(height: 50,),
                CircleAvatar(
                  backgroundImage: AssetImage('images/bab.jpg'),
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
                    TextField(
                      onChanged: (value) {
                        Password=value;
                      },
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
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


                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Text('Hoş geldin!'),
                      Text('Gözlerini ingilizce konuştuğun bir dünyaya açmak üzeresin.'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  color: Colors.grey,
                  child: Container(
                      width:  120,
                      height:  40,
                      child: Center(child: Text('Kaydı Tamamla!'))),
                  onPressed: () async{


                    setState(() {
                      showspin=true;
                    });

                      try {
                        final newuser = await _auth.createUserWithEmailAndPassword(
                            email: Email, password: Password);
                        if(newuser!=null)
                          {SystemChannels.textInput.invokeMethod('TextInput.hide');
                            StatusAlert.show(
                              context,
                              duration: Duration(seconds: 2),
                              title: 'Hesabın Oluşturuldu',
                              configuration: IconConfiguration(icon: Icons.done),
                            );

                            Navigator.pop(context) ;

                          }
                      } catch(e)
                      {

                        setState(() {
                        showspin=false;
                        });

                        SweetAlert.show(context,

                            subtitle: e.message,
                            style: SweetAlertStyle.error);

                      }

                  },
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
