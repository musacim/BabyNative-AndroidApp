import 'grammer-text.dart';
import 'package:flutter/material.dart';
class grammerpage extends StatefulWidget {
  @override
  _grammerpageState createState() => _grammerpageState();
}

class _grammerpageState extends State<grammerpage> {
  var pressed1=false;
  var pressed2=false;
  var pressed3=false;
  var pressed4=false;
  var pressed5=false;
  var pressed6=false;
  var pressed7=false;
  var pressed8=false;
  var pressed9=false;
  var pressed10=false;
  var pressed11=false;
  var pressed12=false;
  var pressed13=false;
  var pressed14=false;
  var pressed15=false;
  var pressed16=false;
  var pressed17=false;
  var pressed18=false;
  var pressed19=false;


  @override

  Widget build(BuildContext context) {
    List<Widget> mylist=[

      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("1-Word"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed1==false){
                        pressed1 = true;}else{pressed1=false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed1 ? Text(grammer1,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("2-Sentence"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed2==false){
                        pressed2 = true;}else{pressed2 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed2 ? Text(grammer2,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("3-Parts Of Speech"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed3==false){
                        pressed3 = true;}else{pressed3 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed3 ? Text(grammer3,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("4-Noun"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed4==false){
                        pressed4 = true;}else{pressed4 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed4 ? Text(grammer4,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("5-Pronoun"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed5==false){
                        pressed5 = true;}else{pressed5 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed5 ? Text(grammer5,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("6-Adjective"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed6==false){
                        pressed6 = true;}else{pressed6 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed6 ? Text(grammer6,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("7-Verb"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed7==false){
                        pressed7 = true;}else{pressed7 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed7 ? Text(grammer7,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("8-Adverb"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed8==false){
                        pressed8 = true;}else{pressed8 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed8 ? Text(grammer8,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("9-Preposition"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed9==false){
                        pressed9 = true;}else{pressed9 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed9 ? Text(grammer9,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("10-Conjunction"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed10==false){
                        pressed10 = true;}else{pressed10 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed10 ? Text(grammer10,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("11-Interjection"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed11==false){
                        pressed11 = true;}else{pressed11 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed11 ? Text(grammer11,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("12-Present Tense"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed12==false){
                        pressed12 = true;}else{pressed12 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed12 ? Text(grammer12,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("13-Past Tense"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed13==false){
                        pressed13 = true;}else{pressed13 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed13 ? Text(grammer13,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("14-Future Tense"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed14==false){
                        pressed14 = true;}else{pressed14 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed14 ? Text(grammer14,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("15-Numbers"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed15==false){
                        pressed15 = true;}else{pressed15 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed15 ? Text(grammer15,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("16-Phrases"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed16==false){
                        pressed16 = true;}else{pressed16 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed16 ? Text(grammer16,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("17-Clauses"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed17==false){
                        pressed17 = true;}else{pressed17 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed17 ? Text(grammer17,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("18-Conditionals"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed18==false){
                        pressed18 = true;}else{pressed18 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed18 ? Text(grammer18,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 180,
                decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
      ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("19-Article"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed19==false){
                        pressed19 = true;}else{pressed19 =false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed19 ? Text(grammer19,style: TextStyle(color: Colors.white),) : SizedBox(),
        ],
      ),





    ];


    Widget _mylist(BuildContext context){
      return ListView.builder(padding: EdgeInsets.fromLTRB(30, 2, 5, 0),
        itemCount: mylist.length,
        itemBuilder: (context,index){
          return ListTile(
            title: mylist[index],
          );
        },
      );
    }


    return MaterialApp(home: Scaffold(

      body:Container(
    decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/abs.jpg"),
    fit: BoxFit.cover,
    )),
    child:SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(top:50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("Grammer Rules",style: TextStyle(fontSize: 34,color: Colors.grey,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
              Expanded(child: _mylist(context)),
            ],
          ),
        )


      )

      ),));
  }
}
