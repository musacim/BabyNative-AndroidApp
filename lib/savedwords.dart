import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'userclass.dart';
class savedwords extends StatefulWidget {
  String title;
  List<Row> list1;
  List<String> allwords;
  savedwords({   this.title,  this.list1,this.allwords}) ;

  @override
  _savedwordsState createState() => _savedwordsState();
}

class _savedwordsState extends State<savedwords> {

  final _firestore= Firestore.instance;


  final List<Row> mylist=[];

  void getwords() async {
    await for (var snaphot in _firestore.collection('words').orderBy('time',descending: true).snapshots()) {
      for (var word in snaphot.documents) {
        if (word.data['owner'].toString() == userclass.user) {


          mylist.add(Row(children: [Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text("${word.data['word'].toString()}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          )],));


        }
      }
    }
  }




  @override
  void initState()  {
    super.initState();

    if(super.widget.title!=null) {
         mylist.add(Row(children: [
           Text("<----${super.widget.title}---->")
         ],));
       }
    if(super.widget.list1 !=null){
    mylist.addAll(super.widget.list1);
    if(super.widget.title == null){
      mylist.add(Row(children: [
        Text("--------",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
      ],));
    }
      for(int i=0;i<super.widget.allwords.length;i++)
        {
          _firestore.collection('words').add({
            'owner':userclass.user,
            'word':super.widget.allwords[i],
            'time':DateTime.now().toString(),

          });

        }



    }
    getwords();



  }

  Widget _mylist(BuildContext context){
    return ListView.builder(padding: EdgeInsets.fromLTRB(10, 2, 5, 0),
      itemCount: mylist.length,
      itemBuilder: (context,index){
        return ListTile(
          title: mylist[index],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/saved-back.jpg"),
                fit: BoxFit.cover,
              )),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Expanded(flex: 1,
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Center(child: Text("Çevirdiğim Kelimeler",style: TextStyle(color: Colors.blueGrey[200],fontSize: 22,fontWeight: FontWeight.bold),)),
                      Padding(
                        padding: const EdgeInsets.only(left:50.0,right: 50),
                        child: RaisedButton(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                          color: Colors.blueGrey[900],
                          onPressed: (){setState(() {

                          });},
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(

                                  decoration: BoxDecoration(
                                      color:  Colors.blueGrey[900],
                                      border: Border.all(
                                          color: Colors.blueGrey[900]
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),

                                  child: Center(child: Row(
                                    children: [
                                    Icon(Icons.cloud_download,color: Colors.grey,),
                                      SizedBox(width: 1,),
                                      Text("Yükle",style: TextStyle(color:Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
                                    ],
                                  ))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(flex: 3,
                    child: _mylist(context)),

              ],
            ),
          ),
        ),
      )


      ,);
  }
}
