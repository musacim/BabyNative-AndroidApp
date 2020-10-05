
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:image_picker/image_picker.dart';
import 'package:translator/translator.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> iconlist=[];
  List<Row> rowlist=[];
  bool itemexist=false;
  List<Widget> recognizedwords=[];
  String translatedWord;
  List<Widget> detectedWords=[];
  int count=0;
  final translator = GoogleTranslator();
  Future<String> translateText(String input) async {
    var translation = await translator.translate(input, from: 'en', to: 'tr');
    return translation.text;

  }

  File image;
  final picker = ImagePicker();

  Future getImage() async {

    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      image = File(pickedFile.path);
    });
  }


  Future readText() async {
    FirebaseVisionImage ourimage= FirebaseVisionImage.fromFile(image);
    TextRecognizer textRecognizer= FirebaseVision.instance.textRecognizer();
    VisionText readText= await textRecognizer.processImage(ourimage);
    rowlist=[Row(children: [
      Text('ENGLISH'),Icon(Icons.arrow_forward,color: Colors.blue[400],),Text('TURKISH')
    ],)];
    count=0;
    for(TextBlock block in readText.blocks){
      for(TextLine lines in block.lines){
        for(TextElement element in lines.elements){
          itemexist=false;

          translatedWord= await translateText(element.text);
          for(Widget item in recognizedwords) {
            if (item == Text(translatedWord)) {
              itemexist=true;
            };
          }

          setState(()  {
            if(itemexist==false){
                if(count<10 && element.text.length<21)
                  {

                    rowlist.add(Row(children: [
                      Text(element.text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text(' : ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text(translatedWord,style: TextStyle(fontSize: 16),),


                    ],));
                    count+=1;
                  }
                else
                  return;


            }
         });
        }
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:SafeArea(
          child: Column(
            children: [
              image!=null ? Expanded( flex: 10,
                child: Container(
                    decoration: BoxDecoration(
                        image:DecorationImage(image: FileImage(image),fit:BoxFit.cover )
                    )
                ),
              ) :Expanded(  flex:10,child: Container( decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage('images/cateyes.jpg'),fit:BoxFit.cover )
              ))),




              image!=null ? Expanded( flex: 8,
                child: Container(
                  decoration: BoxDecoration(color: Colors.blueGrey,

                   ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: rowlist,
                      ),
                    ],
                  ),
                ),
              ) : Expanded( flex:8,
                  child: Container(color: Colors.black,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('UYARI:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.yellow,fontStyle: FontStyle.italic),),
                    Text('En iyi sonuçları elde etmek için anlamını aradığınız kelimeler fotoğrafın en üstünde kalacak şekilde çekim yapın! Yukarıdan aşağı sırayla ilk 10 İngilizce kelime Türkçe\'ye çevrilecektir.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic),),
                  ],
                ),)),
              Expanded(flex: 2,
                child: Container(color: Colors.blueGrey[300],
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Expanded(flex:2,child: SizedBox()),
                      Expanded(flex: 4,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          color: Colors.black,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text('CAT VISION',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2),),
                              Icon(Icons.camera_alt,color: Colors.blue[400],),

                            ],
                          ),
                          onPressed: () async {
                            await getImage();
                            readText() ;

                          },),
                      ),
                      Expanded(flex:2,child:
                      FlatButton(onPressed:(){
                        Navigator.pop(context);
                      },color: Colors.transparent,child: Icon(Icons.close,color: Colors.black,),))
                    ],
                  ),
                ),
              ),
            ],


          ),
        ) ,
      ),
    );
  }
}
