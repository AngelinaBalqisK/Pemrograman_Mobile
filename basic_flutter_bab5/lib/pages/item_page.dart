import 'package:flutter/material.dart';
import 'package:basic_flutter_bab5/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil nilai yang dikirimkan dari halaman sebelumnya
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Page'),
         backgroundColor: Color.fromARGB(255, 129, 16, 16),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                 child: Image.asset(itemArgs.image, height: 300),
              ),
              // Text('${itemArgs.name}'),
              // Text('\$${itemArgs.price}'),
              // Text('${itemArgs.deskripsi}'),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 4),
                      child: Text('${itemArgs.name}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 4),
                      child: Text(
                        'From \$${itemArgs.price}',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 4),
                      child: Text(
                        '${itemArgs.deskripsi}',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class ItemPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

//     return Scaffold(
      //  navigationBar: const CupertinoNavigationBar(
      //   middle: Text('Second Route'),
      // ),
      // child: Center(
      //   child: CupertinoButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: const Text('Go back!'),
      //   ),
      // ),
      
//     );
//   }
// }