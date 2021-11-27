import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container containerOlustur(String harf, Color renk) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      color: renk,
      margin: EdgeInsets.only(top: 15),
      child: Text(
        harf,
        style: TextStyle(fontSize: 35),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D", Colors.amber[100]),
        containerOlustur("e", Colors.amber[200]),
        containerOlustur("r", Colors.amber[300]),
        containerOlustur("s", Colors.amber),
      ],
    );
  }

  Column dersleriColumunuOlustur() {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Expanded(
        child: containerOlustur("D", Colors.amber),
      ),
      Expanded(
        child: containerOlustur("D", Colors.amber),
      ),
      Expanded(
        child: containerOlustur("D", Colors.amber),
      ),
      Expanded(
        child: containerOlustur("D", Colors.amber),
      ),
      Expanded(
        child: containerOlustur("D", Colors.amber),
      ),
      Expanded(
        child: containerOlustur("D", Colors.amber),
      ),
    ]);
  }

  String _img1 =
      "https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Bu şekilde başlatyırouz.
      theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "evden",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: Container(
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dersleriColumunuOlustur()),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          child: Icon(Icons.add_alert,
              color: Colors
                  .white), //child widgetimizin içine koyacağımzı elemaın temsil ediyor
          backgroundColor: Colors.red,
        ), //Scaffold yapısı appbar, alltan menü flaan filan heğinni içine alan şeyin genel adı. Düzenli bir şekilde bunları yapmamaıza yaryırpyp.
      ),
    );
  }

  List<Widget> get sorunlu_container {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.amber,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.black,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ];
  }

  List<Widget> get flexible_container {
    return [
      Flexible(
        child: Container(
          width: 170,
          height: 170,
          color: Colors.amber,
        ),
      ),
      Flexible(
        //ÖLÇÜYE GÖRE KÜÇÜLT SADECE EN ÜST DEĞERE GELİNCE DUR. EXPANDEDDE DURMAK YOKTU BUNDA VAR

        child: Container(
          width: 170,
          height: 170,
          color: Colors.black,
        ),
      ),
    ];
  }

  List<Widget> get expanded_container {
    return [
      Expanded(
        //EXPANDED ŞU DEMEK sen genişlik ve yükseklliği boşver. boş alana yerleştir. Yazdığımız yükseklik filan boşa gider yani.
        flex:
            2, //kısaca kat sayı demek. Evet boşluğa yayıl ama verdiğim değere göre yay dersen: mesela birine 2 dersen diğerlerinin iiki katı büyklikte yer almış olacak.
        child: Container(
          width: 75,
          height: 75,
          color: Colors.amber,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.black,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
    ];
  }

  Container row_column_ornekler() {
    return Container(
      //height: 400,
      color: Colors.purple[100],
      child: Column(
        // Dikey SIRALAYAN COLUM yatay SIRALAYAN ROW
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment
            .spaceAround, //.center, //YATAY=> elemanları ortalar. //spacce around bnları eşit bir şekilde dağıtır. filan flana.
        crossAxisAlignment: CrossAxisAlignment.start, //DİKEY=> ortalar filan
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("E"),
              Text("M"),
              Text("R"),
              Text("E"),
            ],
          ),
          Icon(
            Icons.fingerprint_sharp,
            size: 70,
            color: Colors.red,
          ),
          Icon(
            Icons.fingerprint_sharp,
            size: 70,
            color: Colors.blue,
          ),
          Icon(
            Icons.fingerprint_sharp,
            size: 70,
            color: Colors.yellow,
          ),
          Icon(
            Icons.fingerprint_sharp,
            size: 70,
            color: Colors.purple,
            /*//bir kutu filan olmadığı için scaffold içerisidneki ibütün boş yherlere yayılıyor
        color: Colors.blue,
        width: 300,
        height: 300,
        child: Text(
          "Serkan alpasla" * 2,
          textAlign: TextAlign.center,
        ), //kırmzıı renk bunun kadar yer kaplar
        margin: EdgeInsets.fromLTRB(10, 25, 35,
            45), //etrafıyla ne kadar boş kalacağını vs. düzenleyebilioruz
        padding: EdgeInsets.all(25),
        constraints: BoxConstraints(
            maxHeight: 200, minHeight: 200, maxWidth: 200, minWidth: 200),
      )*/
          )
        ],
      ),
    );
  }

  Widget containerDersleri() {
    //yaptığımzı örnekleri buraya aldık
    return Center(
      child: Container(
        padding: EdgeInsets.all(125),
        // color: Colors.brown,
        child: Text(
          "Serkan",
          style: TextStyle(fontSize: 25, color: Colors.amber),
        ),

        // textColor: Colors.blue,
        // style: FlutterLogoStyle.horizontal,
        /*color: Colors.purple[500],
          width: 200,
          height: 200,
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            margin:
                EdgeInsets.all(30), //sarı koş
                elerden uzakllamaya çalışyhıpr
            width: 100,
            height: 100,
            child: Text("Serkanalpslan"),*/

        decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25),
            image:
                DecorationImage(image: NetworkImage(_img1), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54, offset: Offset(0, 0), blurRadius: 9)
            ]
            // border: Border.all(
            //   width: 5,
            //   color: Colors.amber,
            // ),
            // borderRadius: BorderRadius.circular(15)),
            ),
      ),
    );
  }
}
