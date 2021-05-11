import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

int number = 0;
int penampung = 1;
String hasil = "";
String state = "angka";

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Aplikasi coba")
//           ),
//         body:Center(
//           child: Container(
//             padding: EdgeInsets.all(10),
//             width: 200,
//             height: 100,
//             color: Colors.lime,
//             child: Text("Coba Aplikasi supaya saya cepat bisa dan mahir menggunakan flutter",
//             maxLines: 3,
//             textAlign: TextAlign.center,
//             style: TextStyle(fontWeight: FontWeight.bold),),
//           )
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.ac_unit)
//           ,)
//         ));
//   }
// }
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Aplikasi pertama dengan flutter"),
            ),
            body: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: <Color>[Colors.orange, Colors.lime])),
              margin: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(penampung.toString()),
                  Text(hasil),
                  Text(state),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(child: Text("Kalikan dengan 2"), onPressed: kali),
                      RaisedButton(child: Text("Tambahkan"), onPressed: tambah),
                      RaisedButton(child: Text("Ubah Ke Huruf"), onPressed: change),
                      RaisedButton(child: Text("Reset"), onPressed: reset),
                    ],
                  )
                ],
              ),
            )));
  }

  void kali() {
    setState(() {
        penampung = penampung * 2;
    });
  }

  void tambah() {
    setState(() {
        if (state == "angka"){
          hasil = hasil + " " + penampung.toString();
        }else if (state == "huruf"){
          hasil = hasil + " " + String.fromCharCode(penampung+65) ;
        }
    });
  }

  void change() {
    setState(() {
      if (state == "angka"){
        state = "huruf";
      }else if (state == "huruf"){
        state = "angka";
      }
    });
  }

  void reset() {
    setState(() {
          penampung = 1;
          state = "angka";
          hasil = "";
    });
  }
}
