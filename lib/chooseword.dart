import 'package:flutter/material.dart';
import 'words_screen.dart';
import 'package:sweetalert/sweetalert.dart';

class chooseword extends StatefulWidget {

  @override
  _choosewordState createState() => _choosewordState();
}

class _choosewordState extends State<chooseword> {
   int chapter=-1;
   List<Container> mylist=[];

  Widget _mylist(BuildContext context){
    return ListView.builder(
      itemCount:  mylist.length,
      itemBuilder: (context,index){
        return ListTile(
          title:  mylist[index],
        );
      },
    );
  }


  @override
  void initState() {
    for (int i = 1; i < 178; i++) {
      mylist.add(Container(
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: FlatButton(
            color: Colors.blueGrey,
            onPressed: () {
                chapter = i;
            },
            child: Text(
              'Chapter ${i}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            )),
      ));
    }

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body:
      Container(
        decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage("images/abs.jpg"),
      fit: BoxFit.cover,
    )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 80),
            child: Row(
              children: [
                Expanded(flex:4,
                  child: Column(
                    children: [
                      Expanded(
                        child: _mylist(context)

                        ,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,bottom: 40),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {});
                        if(chapter<0){
                          SweetAlert.show(context,
                              subtitle: 'Lütfen bir chapter seçin.',
                              );

                        }else{
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                          return WordsPage(count:  chapter-1,);}));
                      }},
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.red,
                            border: Border.all(
                              width: 5.3,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(16))),
                        height: 120,child:Icon(Icons.play_arrow)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
      ,),);
  }
}

