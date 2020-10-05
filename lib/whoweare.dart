import'package:flutter/material.dart';



class whoweare extends StatelessWidget {
  String str='''
Öğrencilere yönelik İngilizce öğretimine ülkemizde; ilkokul, ortaokul ve lise yılları da dahil uzun yıllar boyunca devam ediliyor. Ancak bu eğitime oldukça uzun süre ayrılmasına karşılık, öğrencilerin büyük çoğunluğu kendini yabancı dil konusunda henüz yeterli hissetmiyor ve bu konuda ekstra çaba ve eğitime ihtiyaç duyuyor. Özellikle liseden yeni mezun olmuş hazırlığa başlayacak olan öğrenciler bu ihtiyacı en çok hissedenler oluyor. 

Bu noktada sanal mağazalarda öğrencilerin ihtiyacını karşılayacak birçok mobil uygulama var. Ancak çok detaylı, gerekli olandan daha fazla ayrıntıya, sahip olan uygulamalar ilk elimize alışımızda bizi etkilese de bir süre sonra kullanışsız kalıyor .

Sonuç olarak, sadece en temel özelliklerin tek bir yerde toplandığı, gerekli olmayan özelliklerin bulunmadığı, ekranın köşesine reklamların gizlice yerleştirilmediği bir uygulama yapmak, yabancı dil öğrenmenin zorlu zamanlarında tecrübe edilen, bu süreçte zorlanılan, zaman harcanılan noktaların çözümünde elde edilen birikimleri bizden sonraki nesillere aktarmak bu uygulamanın en temel misyonudur.

''';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body:
      Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/abs.jpg"),
            fit: BoxFit.cover,
          )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:60.0,left: 30,right: 30),
            child: Column(
              children: [
                Text("Misyonumuz",textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                SizedBox(height: 10,),
                Text(str,style: TextStyle(fontSize: 13,color: Colors.white,),textAlign: TextAlign.left,),

              ],
            ),
          ),
        ),
      )
      ,),);
  }
}
