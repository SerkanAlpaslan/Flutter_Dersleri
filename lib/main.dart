import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.grey),
      //Bu şekilde başlatyırouz.
      home: Scaffold(
        appBar: AppBar(
          title: Text("evden"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            color: Colors.purple[500],
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              color: Colors.yellow,
              margin:
                  EdgeInsets.all(30), //sarı koşelerden uzakllamaya çalışyhıpr
              width: 100,
              height: 100,
              child: Text("Serkanalpslan"),
            ),
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
        ),*/
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
}
