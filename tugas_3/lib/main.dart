import 'package:flutter/material.dart';
import 'dart:async'; 

void main() {
  runApp(MyApp());
}
// 2.5.1 Text Widget
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(title: Text("MovieMax"), backgroundColor: Color.fromARGB(255, 146, 18, 18),),
        body: Column(
          children: [
            
            Row(
              children: [
                Container(
                  
                  color: const Color.fromARGB(255, 255, 255, 255),
                    alignment:Alignment.center,
                      child: Text("Berita Terbaru", style: TextStyle(fontSize:15,color: 
                      Colors.black)),
                        height: 55.0,
                        width: 190.0,
                ),
                 Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                    alignment:Alignment.center,
                      child: Text("Trending Hari Ini", style: TextStyle(fontSize:15,color: 
                      Colors.black)),
                        height: 55.0,
                        width: 221.0,
                ),
              ],
              

              ),
     
                Container(
                  margin: EdgeInsets.only(top: 2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 104, 28, 28),
                      //width: 4
                      
                    ),
                    color: const Color(0xff7c94b6),
                    image:  const DecorationImage(
                      image: NetworkImage('https://i.pinimg.com/564x/31/8b/02/318b02433a675eac99ee13c8762bce12.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  height: 250.0,
                  width: 411.0,
                  // alignment: Alignment.topCenter,
                  // color: const Color.fromARGB(255, 244, 54, 212),
                  // child: Text("Gambar", style: TextStyle(fontSize:30,color: 
                  //     Color.fromARGB(255, 247, 245, 245))),
                  //     height: 280.0,
                  //     width: 411.0,

                ),
                 Container(
                  // margin: EdgeInsets.only(left: 2, right: 2),
                  //   decoration: BoxDecoration(
                  //   border: Border.all(
                  //     color: Color.fromARGB(255, 104, 28, 28),
                  //     ),),
                    
                  alignment: Alignment.topCenter,
                   //margin: EdgeInsets.only(left :2, right: 2),
                  padding: EdgeInsets.only(top: 10),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Text("Tayangnya Film Pengabdi Setan",textAlign: TextAlign.center, style: TextStyle(fontSize:18,
                  color: Colors.black, fontWeight: FontWeight.bold)),
                      height: 50.0,
                      width: 411.0,
                 ),
                  Container(
                  margin: EdgeInsets.only(left :2, right: 2),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left :8),
                  color: Color.fromARGB(255, 146, 18, 18),
                 child: Text("Simak Lebih Lanjut >",textAlign: TextAlign.center, style: TextStyle(fontSize:14,
                  color: const Color.fromARGB(255, 255, 255, 255))),
                      height: 50.0,
                      width: 411.0,
                 ),
                 Stack(
                  children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(top: 10, right: 2,left: 2),
                       decoration: BoxDecoration(
                       border: Border.all(
                      color: Colors.black,
                      width: 1,
                       )
                    ),
                    child:  Text("Jakarta, 4 Agustus 2022", style: TextStyle(fontSize: 15, color: Colors.black)),
                      //color: Colors.yellow,
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left :5, bottom: 2),
                      height: 170,
                      width: 412,
                    //margin:EdgeInsets.only(left:5),
                     ),
                 

                    Container(
                      margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                      decoration: BoxDecoration(
                       border: Border.all(
                      color: Colors.black,
                      width: 1,
                      //("Gambar", style: TextStyle(fontSize: 15, color: Colors.black)),

                       )
                       
                    ),
                    
                      child:

                        Row(
                          children:[
                            Container(
                              //margin: EdgeInsets.only(top: 10),
                              //padding: EdgeInsets.only(top: 7),
                               
                                height: 130,
                              width: 180,
                                color: const Color(0xff7c94b6),
                                child: Image(image: NetworkImage('https://opsi.id/uploads/gambar-1658753092.jpg'),
                                 fit: BoxFit.fitWidth,
                                   ),
                            
                               
                                  
                              
                            ),
                             Container(
                              color: Color.fromARGB(255, 255, 255, 255),
                              alignment: Alignment.center,
                              child: Text("Penayangan Perdana Film Pengabdi Setan 2", style: TextStyle(fontSize: 15, color: Colors.black)),
                              height: 131,
                              width: 221,
                              padding: EdgeInsets.only(left : 16),
                             )
                          ]

                          )
                        ),      
                     
                  ],),
               Stack(
                  children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(top: 10, right: 2,left: 2),
                       decoration: BoxDecoration(
                       border: Border.all(
                      color: Colors.black,
                      width: 1,
                       )
                    ),
                    child:  Text("Jakarta, 1 Maret 2022", style: TextStyle(fontSize: 15, color: Colors.black)),
                      //color: Colors.yellow,
                      alignment: Alignment.bottomLeft,
                       padding: EdgeInsets.only(left :5, bottom: 2),
                      height: 170,
                      width: 412,
                      //margin:EdgeInsets.only(left:5, right: 5),
                     ),
                 

                    Container(
                      margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                      decoration: BoxDecoration(
                       border: Border.all(
                      color: Colors.black,
                      width: 1,
                       )
                    ),
                      child:
                        Row(
                          children:[
                            Container(
                              //margin: EdgeInsets.only(top: 10),
                              //padding: EdgeInsets.only(top: 7),
                               
                                height: 130,
                              width: 180,
                                color: const Color(0xff7c94b6),
                                child: Image(image: NetworkImage('https://images.solopos.com/2017/06/S9CimBcz-2806-ANTRIAN-XXI.jpg'),
                                 fit: BoxFit.fitHeight,
                                   ),
                            
                               
                                  
                              
                            ),
                             Container(
                              color: Color.fromARGB(255, 255, 255, 255),
                              alignment: Alignment.center,
                              child: Text("Antusias para pengemar", style: TextStyle(fontSize: 15, color: Colors.black)),
                              height: 131,
                              width: 221,
                             )
                          ]

                          )
                        ),      
                     
                  ],),
              // Container(
              //     alignment: Alignment.centerLeft,
              //     padding: EdgeInsets.only(left :8),
              //     color: Color.fromARGB(255, 146, 18, 18),
              //    child: Text("",textAlign: TextAlign.center, style: TextStyle(fontSize:18,
              //     color: const Color.fromARGB(255, 255, 255, 255))),
              //         height: 12.0,
              //         width: 411.0,
              //    )
          ]
           
    )));
  }
 }
      // //     Row(
              // // children: [
              // //   Container(
              // //     color: Color.fromARGB(255, 19, 100, 65),
              // //       alignment:Alignment.center,
              // //         child: Text("Berita Terbaru", style: TextStyle(fontSize:15,color: 
              // //         Colors.black)),
              // //           height: 100.0,
              // //           width: 190.0,
              // //   ),
              // //    Container(
              // //     color: Color.fromARGB(255, 86, 125, 199),
              // //       alignment:Alignment.center,
              // //         child: Text("Trending Hari Ini", style: TextStyle(fontSize:15,color: 
              // //         Colors.black)),
              // //           height: 100.0,
              // //           width: 221.0,
              // //   ),
              // // ],
              

              // ),
              // ],)