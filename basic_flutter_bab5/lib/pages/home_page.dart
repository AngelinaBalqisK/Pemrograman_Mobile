import 'package:basic_flutter_bab5/widgets/cardwidget.dart';
import 'package:flutter/material.dart';
import 'package:basic_flutter_bab5/models/item.dart';
import 'package:basic_flutter_bab5/widgets/cardwidget.dart';

class HomePage extends StatelessWidget {
  
  final List<Item> items = [
    Item(name: 'Chicken Super Suprime',
      price: 140000, 
      image: ('assets/img/menu1.jpeg'), 
      deskripsi: 'Hidangan pizza yang umumnya terdiri dari kulit pizza yang dilapisi dengan saus tomat, lapisan keju mozzarella, dan berbagai topping yang mencakup potongan daging ayam, sayuran, dan bumbu lainnya.'),
    Item(name: 'Hawaian Pizza', 
      price: 153000, 
      image: ('assets/img/menu2.jpeg'), 
      deskripsi: 'Hawaiian Pizza adalah pilihan yang sempurna untuk mereka yang ingin mencicipi pizza dengan cita rasa yang berbeda dan eksotis. Kombinasi nanas manis dan ham gurih menciptakan perpaduan yang memikat lidah dan menjadi salah satu varian pizza yang paling terkenal di dunia.'),
    Item(name: 'Pepperoni Pizza', 
      price: 147000, 
      image: ('assets/img/menu3.jpeg'), 
      deskripsi: 'Ciri khas Pepperoni Pizza adalah penggunaan potongan tipis daging pepperoni, yang merupakan salam sapi yang dipadatkan dan diolah. Daging pepperoni memberikan rasa gurih, berminyak, dan sedikit pedas yang menjadi tanda khas pizza ini.'),
    Item(name: 'Italian Pizza', 
      price: 172000, 
      image: ('assets/img/menu4.jpeg'), 
      deskripsi: 'Topping pada Italian Pizza biasanya sederhana dan mengedepankan kualitas bahan-bahan. Beberapa varian paling terkenal adalah Margherita, yang hanya memiliki tomat, mozzarella, daun basil, dan sedikit minyak zaitun. Pizza lainnya mungkin memiliki prosciutto, jamur, olives, atau bawang.'),
    
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PIZZA MANIA"),
          backgroundColor: Color.fromARGB(255, 129, 16, 16),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);

                },

                child: ItemWidget(item: item,),
              );
            },
          ),
        ));
  }
}
