// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:basic_flutter_bab6/dbhelper.dart';
import 'package:basic_flutter_bab6/entryForm.dart';
import 'item.dart';


//pendukung program asinkron
class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item> itemList = [];

  @override
  Widget build(BuildContext context) {
    if (itemList.isEmpty) {
      updateListView();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Item'),
      ),
      body: Column(children: [
        Expanded(
          child: createListView(),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColorDark,
                onPrimary: Theme.of(context).primaryColorLight,
              ),
              child: Text("Tambah Item"),
              onPressed: () async {
                var item = await navigateToEntryForm(context, true);
                if (item != null) {
                  int result = await dbHelper.insert(item);
                  if (result > 0) {
                    updateListView();
                  }
                }
              },
            ),
          ),
        ),
      ]),
    );
  }

  Future<Item> navigateToEntryForm(BuildContext context, bool isAdding) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return EntryForm(item: null, isAdding: isAdding);
    }));
    return result;
  }

  ListView createListView() {
    TextStyle textStyle = Theme.of(context).textTheme.headline5!;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.ad_units),
            ),
            title: Text(
              this.itemList[index].name,
              style: textStyle,
            ),
            subtitle: Text(this.itemList[index].price.toString()),
            trailing: GestureDetector(
              child: Icon(Icons.delete),
              onTap: () async {
                //TODO 3 Panggil Fungsi untuk Delete dari DB berdasarkan Item
              },
            ),
            onTap: () async {
              var item = await navigateToEntryForm(context, false);
              if (item != null) {
                int result = await dbHelper.update(item);
                if (result > 0) {
                  updateListView();
                }
              }
              //TODO 4 Panggil Fungsi untuk Edit data
            },
          ),
        );
      },
    );
  }

  //update List item
 void updateListView() {
  final Future<Database> dbFuture = dbHelper.initDb();
  dbFuture.then((database) {
    Future<List<Item>> itemListFuture = dbHelper.getItemList();
    itemListFuture.then((itemList) {
      setState(() {
        this.itemList = itemList; // Update the itemList
        this.count = itemList.length; // Update the count
      });
    });
  });
 }
//     final Future<Database> dbFuture = dbHelper.initDb();
//     dbFuture.then((database) {
//       //TODO 1 Select data dari DB
//       Future<List<Item>> itemListFuture = dbHelper.getItemList();
//       itemListFuture.then((itemList) {
//         setState(() {
//           this.itemList = itemList;
//           this.count = itemList.length;
//         });
//       });
//     });
  
// }
}