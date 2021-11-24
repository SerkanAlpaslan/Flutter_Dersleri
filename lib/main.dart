import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          height: 400,
          color: Colors.purple[100],
          child: Column(// Dikey SIRALAYAN COLUM yatay SIRALAYAN ROW
            // mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment
            //     .center, //YATAY=> elemanları ortalar. //spacce around bnları eşit bir şekilde dağıtır. filan flana.
            // crossAxisAlignment: CrossAxisAlignment.center,//DİKEY=> ortalar filan
            children: [
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
              )
            ],
          ),
        ),

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          child: Icon(Icons.add_a_photo_sharp,
              color: Colors
                  .white), //child widgetimizin içine koyacağımzı elemaın temsil ediyor
          backgroundColor: Colors.red,
        ),
      ), //Scaffold yapısı appbar, alltan menü flaan filan heğinni içine alan şeyin genel adı. Düzenli bir şekilde bunları yapmamaıza yaryırpyp.
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
