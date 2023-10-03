import 'package:flutter/material.dart';
import 'package:basic_flutter_bab5/models/item.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  ItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFEFEFF2),
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(item.image, height: 100, width: 50),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 4),
                    child: Text(
                      '${item.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 4),
                    child: Text(
                      '${item.price}',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

