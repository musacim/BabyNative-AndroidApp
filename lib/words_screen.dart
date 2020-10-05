import 'package:flutter/material.dart';
import 'text_resource.dart';
import 'package:status_alert/status_alert.dart';
import 'dart:io';
import 'package:sweetalert/sweetalert.dart';

class WordsPage extends StatefulWidget {
  List<String> listword;
  List<String> listmean;
  List<String> listexp;
  int count;

  WordsPage({ this.listword,this.listmean,this.listexp,this.count}) ;


  @override
  _WordsPageState createState() => _WordsPageState();
}

class _WordsPageState extends State<WordsPage> {

  int a =0;
  int b =0 ;
  int counter;
  List<String> meanings;
  List<String> orginalexp;
  List<String> words;

  String guess;
  double customfont = 11;
  bool repeat;
  bool done=false;
  bool revise=false;
  bool showanswer=false;

  List<String> repeatword=[];
  List<String> repeatmean=[];
  List<String> repeatexp=[];
  List<String> wrong_word_list=[];
  List<String> wrong_mean_list=[];
  List<String> wrong_exp_list=[];
  List<Icon> iconlists = [];
  List<Expanded> learnedwords = [];
  Icon currenticon;
  Icon trueicon = Icon(Icons.check_circle,
      color: Colors.green);
  Icon falseicon = Icon(
    Icons.close,
    color: Colors.red,
  );
  String answer(int x){
    if (repeat==false){
      return meanings[x];
    }else{return repeatmean[x];}
  }

  String SoruBas(int a) {

    if (repeat==false){
    return words[a];}else{
      return repeatword[a];
    }
  }

  String originBas(int a) {

    if (repeat==false){
      return orginalexp[a];}else{
      return repeatexp[a];
    }
  }

  String CevapBas(int a) {

    if (repeat==false){
      return meanings[a];}else{
      return repeatmean[a];
    }
  }

  final _controller = TextEditingController();


  @override
  void initState() {

       if(super.widget.listword ==null) {
          repeat=false;
           counter=super.widget.count;
           meanings=meanings_bank.sublist(20*counter,20*counter+20);
           orginalexp=orginalexp_bank.sublist(20*counter,20*counter+20);
           words=words_bank.sublist(20*counter,20*counter+20);

       }else{
         repeatword.addAll(super.widget.listword);
         repeatmean.addAll(super.widget.listmean);
         repeatexp.addAll(super.widget.listexp);
         repeat = true;

       };
       super.initState();


  }
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
        body: Container(
          decoration:  BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/words-back.jpg"),
        fit: BoxFit.cover,
      )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,30,10,0),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 9,
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: learnedwords,),
                  ),
                  Expanded(
                    flex: 12,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:8.0),
                          child: Row(children: [
                            Expanded(
                              child: Container(child: Text("Kelimemiz:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),),
                            )
                          ],),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top:2,bottom:2),
                                  child: Text(
                                    SoruBas(a),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:8.0),
                          child: Row(children: [
                            Expanded(
                              child: Container(child: Text("Kelimenin İngilizce tanımı:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                            )
                            )],),
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top:4,bottom: 4),
                                  child: Text(
                                    originBas(a),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:8.0),
                          child: Row(children: [
                            Expanded(
                              child: Container(child: Text("Kelimenin Türkçe karşılığı?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                        ))
                          ],),
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                        controller: _controller,
                                  onChanged: (value) {
                                    guess=value;
                                  },
                                  autofocus: false ,
                                  textAlign: TextAlign.center,

                                  decoration: InputDecoration(

                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.0,  ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2.0),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey, width: 2.0),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                  ),
                                ),
                              ),


                            ),

                          ],
                        ),
                        SizedBox(height: 5,),
                        FlatButton(
                          color: Colors.redAccent,
                          child: Text(
                            'Kontrol Et',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {

                            setState(() {
                              FocusScope.of(context).unfocus();
                            });

                            showanswer=false;
                            _controller.clear();
                              if(done==true){return;};

                            if(repeat==false){
                              if(guess==meanings[a]  )
                            {
                              currenticon=trueicon;
                            }else{
                              wrong_word_list.add(words[a]);
                              wrong_mean_list.add(meanings[a]);
                              wrong_exp_list.add(orginalexp[a]);
                              currenticon=falseicon;}
                            };

                            if(repeat==true){if(guess==repeatmean[a])
                            {
                              currenticon=trueicon;
                            }else{
                              wrong_word_list.add(repeatword[a]);
                              wrong_mean_list.add(repeatmean[a]);
                              wrong_exp_list.add(repeatexp[a]);
                              currenticon=falseicon;}
                            };

                            setState(() {

                              b = a + 1;

                              customfont = 15;

                              learnedwords.add(Expanded(
                                child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 9,
                                            child: Text(
                                              '$b-',
                                              style: TextStyle(color: Colors.white),
                                            )),
                                        Expanded(
                                          flex: 26,
                                          child: Text(

                                           repeat==true? repeatword[a]:words[a],
                                            style: TextStyle(
                                                color: Colors.white, fontSize: customfont,),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 11,
                                            child: currenticon)
                                      ],
                                    )),
                              ));
                           //   learnedwords.add(Container(
                             //     child: SizedBox(
                               //     height: 8.5,
                                 // )));


                            if(repeat==false && a>18 && wrong_word_list.length<1 ){

                                  StatusAlert.show(
                                  context,
                                  duration: Duration(seconds: 2),
                                  title: 'Tebrikler.',
                                  configuration: IconConfiguration(icon: Icons.refresh),

                                  );
                            done=true;
                            return;

                            }
                              else if((a>18 && repeat==false && (wrong_word_list.length>0)) || ((wrong_word_list.length>0) && a>repeatword.length-2 && repeat==true)) {
                                revise=true;

                                StatusAlert.show(
                                  context,
                                  duration: Duration(seconds: 2),
                                  title: 'Yanlışları tekrar dene.',
                                  configuration: IconConfiguration(icon: Icons.refresh),

                                );
                                Route route = MaterialPageRoute(
                                    builder: (context) =>
                                        WordsPage(listword: wrong_word_list,
                                            listmean: wrong_mean_list,
                                            listexp: wrong_exp_list));
                                Navigator.pushReplacement(context, route);
                              }
                             else if(repeat==true && a>repeatword.length-2 && wrong_word_list.length<1){
                                done=true;
                                          StatusAlert.show(
                                          context,
                                        duration: Duration(seconds: 2),
                                        title: 'Tebrikler.',
                                        configuration: IconConfiguration(icon: Icons.refresh),

                                        );

                            }});
                            if(done==false && revise==false)
                              {a++;}





                          },
                        ),
                        SizedBox(height: 40,),
                        done==true? Container(color: Colors.blueGrey[400],width: 95,
                          child: FlatButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Çık',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(Icons.exit_to_app,color: Colors.white,)
                                ],
                              )),
                        ): FlatButton(
                            onPressed: (){
                              setState(() {
                                if(showanswer==false){
                                showanswer=true;}else{showanswer=false;};
                              });

                            },
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Cevabı Göster',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(Icons.transit_enterexit,color: Colors.white,)
                              ],
                            )),
                        SizedBox(height: 10,),


                        showanswer ? Text(answer(a),style: TextStyle(color: Colors.white),) : SizedBox(),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

