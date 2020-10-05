
import 'package:babynative/grammerpage.dart';
import 'package:babynative/login_screen.dart';
import 'package:babynative/savedwords.dart';
import 'package:babynative/whoweare.dart';
import 'package:babynative/words_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'textRecognizer.dart';
import 'progress_screen.dart';
import 'grammerpage.dart';
import 'chooseword.dart';
import 'roadmap.dart';
import 'whoweare.dart';
class LearningPage extends StatefulWidget {
  @override
  _LearningPageState createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  final _auth=FirebaseAuth.instance;
  FirebaseUser loggedinuser;

  double sizeFont=14;
  void getCurrentUser()async{
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedinuser = user;
      }
    }catch(e){
      print(e);
    }

  }
  @override
  void initState() {
     super.initState();

 getCurrentUser();

  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(  backgroundColor: Colors.black,),
        drawer: Drawer(

          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/walkingwolf.jpg"),
                      fit: BoxFit.cover
                  )
              ),
              child: ListView(

                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  SizedBox(height: 140,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 5.3,
                          color: Colors.blueGrey ,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),

                    child: ListTile(

                      title: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home,color: Colors.yellow,) ,
                          Text('Ana Ekran',style: TextStyle(color: Colors.white,fontSize: sizeFont),),

                        ],
                      )),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LearningPage();
                        }));
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                   Container(
                     decoration: BoxDecoration(
                         color: Colors.transparent,
                         border: Border.all(
                           width: 5.3,
                           color: Colors.blueGrey ,
                         ),
                         borderRadius:
                         BorderRadius.all(Radius.circular(10))),

                     child: ListTile(

                       title: Center(child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.bubble_chart,color: Colors.yellow,) ,
                           Text('Kelime ve Cümle Çeviri',style: TextStyle(color: Colors.white,fontSize: sizeFont),),

                         ],
                       )),
                       onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ProgressScreen();
                        }));
                       },
                     ),
                   ),

                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 5.3,
                          color: Colors.blueGrey ,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),

                    child: ListTile(

                      title: Row(
                        children: [
                          Icon(Icons.filter_tilt_shift,color: Colors.yellow,),
                          Text('CatVision Yapay Zeka Modülü',style: TextStyle(fontSize:sizeFont,color: Colors.white),),
                        ],
                      ),
                      onTap: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return MyApp();
                        }));
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 5.3,
                          color: Colors.blueGrey ,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),

                    child: ListTile(

                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.directions,color: Colors.yellowAccent,),
                          Text('İngilizce için yol haritası',style: TextStyle(fontSize:sizeFont,color: Colors.white),),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return roadmap();
                        }));
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 5.3,
                          color: Colors.blueGrey ,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),

                    child: ListTile(

                      title: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.storage,color: Colors.yellow,) ,
                          Text('Kelimelerim',style: TextStyle(color: Colors.white,fontSize: sizeFont),),

                        ],
                      )),
                      onTap: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return savedwords();
                        }));
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                   Container(
                     decoration: BoxDecoration(
                         color: Colors.transparent,
                         border: Border.all(
                           width: 5.3,
                           color: Colors.blueGrey ,
                         ),
                         borderRadius:
                         BorderRadius.all(Radius.circular(10))),

                     child: ListTile(

                       title: Center(child: Text('Misyonumuz',style: TextStyle(fontSize:sizeFont,color: Colors.white),)),
                       onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                        return whoweare();}));
                       },
                     ),
                   ),

                  SizedBox(height: 10,),
                   Container(
                     decoration: BoxDecoration(
                         color: Colors.transparent,
                         border: Border.all(
                           width: 5.3,
                           color: Colors.blueGrey ,
                         ),
                         borderRadius:
                         BorderRadius.all(Radius.circular(10))),

                     child: ListTile(

                       title: Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.power_settings_new,color: Colors.orangeAccent),
                           Text('Çıkış Yap',style: TextStyle(fontSize:sizeFont,color: Colors.white),),
                         ],
                       ),
                       onTap: () {
                         _auth.signOut();
                         Navigator.pop(context);
                       },
                     ),
                   )


                ],
              ),
            ),
          ),
        )
        ,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/fallingcat.jpg"),
                fit: BoxFit.cover,
              )),
           child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
             children: [

               Padding(
                 padding: const EdgeInsets.only(bottom:115.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                   FlatButton(color: Colors.transparent,
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return chooseword();
                       }));

                     },
                     child: CircleAvatar(
                       radius: 49,
                       backgroundColor: Colors.blueGrey,
                       child: CircleAvatar(
                         backgroundColor: Colors.white,
                         child: Column(
                           children: [
                             SizedBox(height: 23,),
                             Text('Kelime',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                             Text('Bilgisi',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                           ],
                         ),
                       radius: 43,
                       ),
                     ),
                   ),
                     FlatButton(color: Colors.transparent,
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context){
                           return grammerpage();
                         }));

                       },
                       child: CircleAvatar(
                         radius: 49,
                         backgroundColor: Colors.blueGrey,
                         child: CircleAvatar(
                           child:   Column(
                             children: [
                               SizedBox(height: 21,),
                               Text('Dil Bilgisi',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                               Text('(Grammar)',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                             ],
                           ),
                           backgroundColor: Colors.white,
                           radius: 43,
                         ),
                       ),
                     ),


                 ],),
               ),

             ],
           ),


        ),
      ),
    );
  }
}
