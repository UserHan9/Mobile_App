import 'package:flutter/material.dart';
import 'package:my_app/components/button.dart';
import 'package:my_app/components/food_tile.dart';
import 'package:my_app/models/foodr.dart';
import 'package:my_app/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  //food menu
  List foodMenu =[
    Food(name: "MIE", price: "10.00", imagePath: 'lib/images/ramen.png', rating: "4.9"),
    Food(name: "MIE AYAM", price: "10.00", imagePath: 'lib/images/ramen.png', rating: "4.9"),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'MIE AYAM',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                // Kiri: Teks + Tombol
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Teks promo, digeser sedikit ke kiri
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: const Text(
                          'Beli 1 dapet 5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Tombol redeem
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: SizedBox(
                          width: 160,
                          child: MyButton(
                            text: "Redeem",
                            onTap: () {
                              // Fungsi redeem
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(width: 10),

                // Gambar di kanan
                Image.asset(
                  'lib/images/instant-noodles.png',
                  height: 80,
                  width: 80,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // Text Field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari menu...',
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(color: Colors.grey[500]),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25,),

          //menu list 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text("Menu Makanan",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontSize: 18,
            ),),
          ), 

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context,index) => FoodTile(
            food: foodMenu[index],
                      ),
                      ),
          ),

          const SizedBox(height: 25),
          //popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ), 
            margin:const EdgeInsets.only(left: 25,right: 25,bottom: 25),
            padding: const EdgeInsets.all(20),
            child: 
            Row(
            children: [

              Image.asset('lib/images/instant-noodles.png', height: 60,),

              const SizedBox(width: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('MIE AYAM',
                  style: TextStyle(fontSize: 18),
                  ),

                  const SizedBox(height: 10),

                  //price
                  Text('RP21', style: TextStyle(color: Colors.grey[700]),)
                ],
              )
            ],

          ),)




        ],
      ),
    );
  }
}
