import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pokedex_new/fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PokedexHomePage(),
    );
  }
}

class PokedexHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: HexColor("#C82632"),
      body: Stack(
        children: [
          ClipRRect(
            child: Align(
              heightFactor:1,
                // alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2),
                  child: Image.asset("assets/ash.png"),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal :20.0,vertical: 50),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.35),
                          Color.fromRGBO(233, 233, 233, 0.14)
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.5, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: TextButton(
                    child:Text("Start".toUpperCase(),style: GoogleFonts.heebo(
          fontSize: 20,

          fontWeight: FontWeight.bold ,
          color: HexColor("#343434")
        ),),
                    onPressed: () {
                      // askPermission();
                    },
                  )),
            ),
          ) ,
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Text("Welcome to ",style: heeboFont.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.white
                ),),
                Text("Pokedex",style: heeboFont.copyWith(
                  fontSize: 62,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
