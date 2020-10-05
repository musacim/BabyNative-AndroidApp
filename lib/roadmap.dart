import'package:flutter/material.dart';
import 'package:flutter/services.dart';
class roadmap extends StatefulWidget {
  @override
  _roadmapState createState() => _roadmapState();
}

class _roadmapState extends State<roadmap> {

  String note="Burada paylaşılan öneriler, uygulamanın genelinde kullanılan yöntem ve methodlar, tamamıyla kişisel tecrübelere dayanmaktadır. İzlenen yolun size uygun olup olmadığını, ne kadar fayda sağlayacağınızı kendi öğrenme şeklinizin süzgecinden geçirip değerlendirdikten sonra bu uygulamayı kullanmanızı öneririz.";
  String general="Kaba taslak incelediğinizde uygulamanın temel olarak İngilizce\'nin 2 ana konusunu hedef aldığını göreceksiniz: kelime bilgisi ve dil bilgisi. Ana ekrandaki kedimizin de gösterdiği gibi yabancı dil öğrenmedeki ağırlığın %90\’nın kelime bilgisi üzerinde yoğunlaştığını düşünüyoruz. Yazma, konuşma, dinleme ve okuma olarak bildiğimiz 4 temel yeteneğin merkezinde yine kelime bilgisi yer alır.";
  String reading="Okuma bölümünde ise özellikle akademik yazılarda farklı terimlerin kullanıldığı alanlarda alışıla gelmiş kısa kelimelerden ziyade daha kompleks olanları şeçiliyor. “Basit” kelimesi için “simple” yerine “straightforward” veya denge anlamına gelen “balance” yerine “equilibrium” gibi kelimelerin kullanılmasını örnek verebiliriz. Buna ek olarak kullanılan tenseleri, çekimleri tam olarak anlayamadığınız bir cümlede tüm kelimelerin anlamını biliyorsanız, muhtemelen cümlenin de ne anlatmak istediğini kolaylıkla çıkaracaksınız. Türkçe\’den örnek verirsek, şu cümleyi kuran bir yabancının: “gitmek İstanbul\’a ben otobüs otogar yarın nerede” cümlesinde hiçbir dil bilgisi kuralı kullanılmamasına rağmen sadece kelimelerin anlamlarını kullanarak yarın İstanbul\’a gitmek isteyen birinin otogarın yerini sorduğunu anlıyoruz. Dolayısıyla bu noktada en isabetli yatırımın kelime bilgisi olduğu kanaatindeyiz.";
  String listening="Dinleme bölümünde başarılı olmak için söylenen kelimenin ne olduğunu daha önceden duymuş ve yazılışını biliyor olmalısınız, ancak bu şekilde rahat bir listening deneyimi yaşanabilir. Bir dilin birden fazla aksanı olduğunu, çeşitli tonlamalarda farklı insanlar tarafından seslendirildiğini göz önünde bulundurursanız bir kelimeyi bilseniz bile bazen farketmesi çok zor oluyor, önceden pratik yapıp öğrendiğiniz bir kelimenin yarısını dahi duysanız beyniniz onu tamamlaya çalışacaktır. Dolayısıyla bu noktada da en isabetli yatırımın kelime bilgisi olduğu kanaatindeyiz.";
  String speaking="Konuşma en çok zorlanılan alan olarak karşımıza çıkıyor. Yine derdimizi anlatmayı hedef aldığımızda az önceki örnek olduğu gibi sadece gereken kelimeleri söylediğimizde iletişimin büyük kısmını tamamlamış oluyoruz, yine grammer konularında göreceğiniz üzere bir çok fiilin çekimi, isimlerin çoğul tekil halleri bir kurala bağlı olmadan gerçekleşiyor, dolayısıyla kelimeleri öğrenirken çekimlerine de göz gezdirerek öğrendiğimizde dil bilgisi kurallarını da dahil ettiğimiz cümleler kurabiliriz. Yabancı içeriklerde de farkedeceğiniz üzere günlük hayatta ve yazılı kaynaklarda çoğunlukla temel olarak geçmiş, şimdiki, ve gelecek zaman kipleri kullanılıyor bunun dışında aslında çok detaylı olan diğer kip ve çekimlerin seyrek kullanıldığını farkedeceksiniz. Dolayısıyla artan kelime haznenizin verdiği özgüven ve yapılan pratik sonucunda  cümlelerin içine dahil ettiğiniz temel dil bilgisi kurallarıyla en çok zorlanılan konuşma kısmını halletmiş olacaksınız. Oyumuzu tekrar kelime bilgisinden yana kullanıyoruz.";
  String writing="Yazma bölümü ise diğer bölümlerin aksine grammerin önde olduğu bir bölüm olarak karşımıza çıkıyor ancak, Reading kısmında söylediğimiz gibi yazınızı öne çıkaran diğerlerinden ayıran en önemli özelliklerden biri yine kelime seçimleriniz oluyor. Bunun yanı sıra proficiency sınavına girecek olanlar tecrübe edeceklerdir, sizden yazmanız istenilen konu hakkında bildiğiniz kelimeler paragraflarınızın gidişatını oldukça etkiliyor. Örneğin, Türkiye\’de yapılan seçimlerde öğrenciler neden az oy kullanıyor sorusunu tartışmanız istendiğinde ikametgah kelimesinin İngizcesini bilmeniz sizi öne çıkaracaktır, bu sayede şehir dışında okuyanların ikametgahlarını değiştirmediği için oy kullanamadığından bahsedebilirsiniz.";
  String catvision="Film izlemenin dil yeteneklerini geliştirmek için kullanılan en etkili ve eğlenceli yollardan biri olduğunu düşündüğümüz için bu konuda işinize yarayacak bir özellik olan ve arka planında text recognition yapay zeka modülünü kullanan catvisionı uygulamaya ekledik. Film ya da dizi izlerken alt yazıda bilmediğiniz bir kelimeye rastlarsanız catvision modülüne girip kamerayı açıp ekranın fotoğrafını çekerek, kelimenin 1 saniye içinde Türkçe\’ye çevrilmesini sağlayabilirsiniz.";
  String database="Cümle ve kelime çeviri isimli modülde yaptığınız çevirilere başlık ekleyip kelimelerim veri tabanına kaydedebilirsiniz, bir filmi izlerken önce alt yazılı halinde bilmediğiniz kelimelerin anlamlarına bakıp bunları başlık ekleyerek veri tabanınıza kaydederseniz alt yazıyı kaldırıp tekrar izlediğinizde kelimelerinizi gözden geçirip hem listening yeteneklerinizi hem de kelime haznenizi geliştirmiş olursunuz.";
  String method='''Ana ekranda gördüğünüz iki temel modülü kullanarak ilerlemenizde fayda olacağı kanaatindeyiz. Kelime bilgisi kısmında 177 chapter var her chapter 20 kelimeden oluşuyor, bu bölümde en temel olan 3500 kelimeyi sizlere öğretmek amaçlanıyor. Modül yaptığınız yanlış tahminleri bir sonraki turda tekrar size soracak şekilde tasarlandı, her chapterın içinde 20 sorudan yaptığınız yanlışlar bir sonraki tura taşınıyor ve size tekrar soruluyor hepsini doğru bilene kadar devam ediyorsunuz, takıldığınız yerde cevaba da bakabilirsiniz. Bu yöntemle chapterları tamamladıktan sonra her gün en az 1-2 chapteri tekrar tamamlayarak ezberinizin iyice yerleşmesini sağlayabilirsiniz. Açık söylemek gerekirse Babynative uygulamasının kalbi yani en önemli kısmı burası, buradan maksimum faydayı sağlamanızı umuyoruz. Kelimelerin Türkçesi olarak verilen yanıtlar bazen sizi tatmin etmeyebilir, bir kelimenin birden fazla anlamı olduğunu, sıfat-fiil-zarf gibi farklı rollerde kullanıldığını unutmayın, burada öğrendiğiniz kelimeleri tekrar araştırmak ve üstünden geçmek bir diğer önemli nokta. Genel olarak kelimelerin anlamlarını İngilizce açıklamaların üzerinden tahmin etmeye çalışacaksınız, bu kısmın tamamıyla İngilizce olması önemli hiç Türkçe ipucu yer almıyor, böylelikle açıklamaların içerisinden de birçok kelime öğrenmiş olacaksınız.
  Grammer kısmına gelicek olursak, burada en temel olan başlıklar açıklamalar halinde verildi, konu başlıklarının içerisinde birkaç örnek yer alıyor. Alıştırma yapmak için bir kitap kullanmanızı ve grammeri okuyarak karşınıza çıkan bilmediğiniz dil bilgisi kurallarını merak edip öğrenerek ilerlemenizi tavsiye ederiz, daha önce belirttiğimiz gibi uygulamanın temel odak noktası kelime alıştırmaları.
  ''';
  String process="Üzerinde az durulan belki de en önemli noktanın gelişmeye, öğrenmeye sürekli devam edebilmek, devamlılık gösterebilmek olduğunu düşünüyoruz. Özellikle hazırlık sınıfı bitirildikten sonra, lise veya üniversite hayatının kalan kısmında İngilizce arka plana atılıyor. Bu dönemde geliştirdiğiniz öğrenme, kendinizi geliştirme yöntemlerinizin oturması ve ileride de sürekli hale gelmesi, akademik ve profesyonel hayatınızın devamı için de oldukça önem taşıyor. Her öğrendiğiniz kelimenin sizi bir “baby” adım daha atarak “native” olmaya yaklaştırdığını hatırlatır, sabırla devam edeceğiniz ve karşılığını mutlaka alacağınızı umduğumuz bu süreçte size en ufak bir fayda sağlamaktan mutluluk duyacağımızı tekrar belirterek, yabancı dil öğrenme serüveninizde başarılar dileriz.";

  List<Column> mylist=[];
  bool pressed1=false;
  bool pressed2=false;
  bool pressed3=false;
  bool pressed4=false;
  bool pressed5=false;
  bool pressed6=false;
  bool pressed7=false;
  bool pressed8=false;
  bool pressed9=false;
  bool pressed10=false;




  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    mylist=[
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:28.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[200],
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: FlatButton(
                    color: Colors.transparent,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Önemli Not",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.left,),
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
          ),
          pressed1 ? Text(note,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Kelime Bilgisi",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.left,),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed2==false){
                        pressed2 = true;}else{pressed2=false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed2 ? Text(general,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Reading",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.left,),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed3==false){
                        pressed3 = true;}else{pressed3=false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed3 ? Text(reading,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Listening",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.left,),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed4==false){
                        pressed4 = true;}else{pressed4=false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed4 ? Text(listening,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Speaking",style: TextStyle(color: Colors.black54  ,fontSize: 16),textAlign: TextAlign.left,),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed5==false){
                        pressed5 = true;}else{pressed5=false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed5 ? Text(speaking,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:28.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[200],
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: FlatButton(
                    color: Colors.transparent,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Writing",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.left,),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        if (pressed6==false){
                          pressed6 = true;}else{pressed6=false;};
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          pressed6 ? Text(writing,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("CatVision",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.left,),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed7==false){
                        pressed7 = true;}else{pressed7=false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed7 ? Text(catvision,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Kelime Veritabanı",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.left,),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed8==false){
                        pressed8 = true;}else{pressed8=false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed8 ? Text(database,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Genel Yöntem",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.left,),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed9==false){
                        pressed9 = true;}else{pressed9=false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed9 ? Text(method,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: FlatButton(
                  color: Colors.transparent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Devamlılık",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.left,),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (pressed10==false){
                        pressed10 = true;}else{pressed10=false;};
                    });
                  },
                ),
              ),
            ],
          ),
          pressed10 ? Text(process,style: TextStyle(color: Colors.white,fontSize: 14),) : SizedBox(),
        ],
      ),
    ];

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
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Yol Haritası",textAlign: TextAlign.left,style: TextStyle(color: Colors.brown[200],fontWeight: FontWeight.bold,fontSize: 22),),
                      Icon(Icons.map,color: Colors.brown[200],)
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Expanded(child: _mylist(context)),

              ],
            ),
          ),
        ),
      )
      ,),);
  }
}
