import 'package:babynative/savedwords.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:translator/translator.dart';

class ProgressScreen extends StatefulWidget {
  @override
  _ProgressScreenState createState() => _ProgressScreenState();
}


class _ProgressScreenState extends State<ProgressScreen> {
  Widget _mylist(BuildContext context){
    saved=false;
    return ListView.builder(padding: EdgeInsets.fromLTRB(10, 2, 5, 0),
      itemCount: list1.length,
      itemBuilder: (context,index){
        return ListTile(
          title: list1[list1.length-index-1],
        );
      },
    );
  }

  String title;
  List<String> allwords=[];
  bool saved=false;
  String wordgiven;
  String originofword;
  double progress_const = 0;
  Color Color_on = Colors.blueGrey;
  List<Row> list1=[];


  Color Color_off = Colors.grey;
  String translatedWord;
  final translator = GoogleTranslator();


  Future<String> translateText(String input) async {
    var translation = await translator.translate(input, from: 'en', to: 'tr');
    return translation.text;

  }  Future translateword(element) async {

    originofword=element;
    translatedWord= await translateText(element);

  }
  final _controller = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.blueGrey,
        body: Column(

          children: [
            Expanded (flex:2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/catread.jpg"),
                      radius: 53,
                    ),
                  ),
                   SizedBox(height: 10,),
                   Column(children: [
                     Row(
                     children: [
                       Expanded(flex:5,
                         child: Container(
                           width: 300,height: 50,

                           child: TextField(
                             onChanged: (value) {
                               setState(() {
                                 wordgiven=value;

                               });
                             },
                            controller: _controller,
                             textAlign: TextAlign.center,
                             decoration: InputDecoration(
                               hintText: 'Anlamını bilmediğiniz kelimeyi girin.',
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
                                     color: Colors.grey, width: 4.0),
                                 borderRadius: BorderRadius.all(Radius.circular(32.0)),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide:
                                 BorderSide(color: Colors.grey, width: 4.0),
                                 borderRadius: BorderRadius.all(Radius.circular(32.0)),
                               ),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(width: 5,),
                       Expanded(flex:2,
                         child: RaisedButton(
                           onPressed: () async {
                             await translateword(wordgiven);
                             _controller.clear();
                             setState(() {
                               list1.add(
                                   Row(children: [
                                     Text(originofword,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                     Text(' : ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                     Text(translatedWord,style: TextStyle(fontSize: 16),),
                                   ],));
                             });

                           allwords.add("$originofword : $translatedWord");
                            },

                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40)),child: Text("Translate"),),
                       )
                     ],
                   ),
                     ],),
                   Column(children: [
                     Row(
                     children: [
                       Expanded(flex:5,
                         child: Container(
                           width: 300,height: 50,

                           child: TextField(
                             onChanged: (value) {
                               setState(() {
                                 title=value;
                               });
                             },

                             textAlign: TextAlign.center,
                             decoration: InputDecoration(
                               hintText: 'Aramanıza başlık ekleyin.',
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
                                     color: Colors.grey, width: 4.0),
                                 borderRadius: BorderRadius.all(Radius.circular(32.0)),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide:
                                 BorderSide(color: Colors.grey, width: 4.0),
                                 borderRadius: BorderRadius.all(Radius.circular(32.0)),
                               ),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(width: 5,),
                       Expanded(flex:2,
                         child: RaisedButton(
                           onPressed: (){
                             allwords.add('<----$title---->');
                             Navigator.pop(context);
                             Navigator.push(
                             context,
                             MaterialPageRoute(
                             builder: (context) => savedwords(title: title,list1: list1,allwords:allwords),
                             ));},

                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40)),child: Text("Save and Exit"),),
                       )
                     ],
                   ),
                     Row(mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         SizedBox(width: 30,),
                         Text('ENG'),Icon(Icons.trending_flat),Text('TR')
                       ],)],),

                ],
              ),
            ),

            Expanded(flex:2,child: _mylist(context))

          ],
        ),
      )
    );
  }
}

