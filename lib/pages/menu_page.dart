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
  List foodMenu = [
    Food(name: "MIE", price: "10.00", imagePath: 'lib/images/ramen.png', rating: "4.9"),
    Food(name: "MIE AYAM", price: "10.00", imagePath: 'lib/images/ramen.png', rating: "4.9"),
  ];

  @override
  Widget build(BuildContext context) {
    // Ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.grey[900]),
        title: Text('MIE AYAM', style: TextStyle(color: Colors.grey[900])),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // PROMO BANNER
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    // Teks & Tombol
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text(
                              'Beli 1 dapet 5',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * 0.05, // Responsive font
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: SizedBox(
                              width: screenWidth * 0.4,
                              child: MyButton(
                                text: "Redeem",
                                onTap: null,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'lib/images/instant-noodles.png',
                      height: screenHeight * 0.1,
                      width: screenWidth * 0.2,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // SEARCH FIELD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari menu...',
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // JUDUL
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Menu Makanan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: screenWidth * 0.045,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // LIST MAKANAN
              SizedBox(
                height: screenHeight * 0.3, // Responsive tinggi list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTile(
                    food: foodMenu[index],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // POPULAR FOOD
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/images/instant-noodles.png',
                      height: screenHeight * 0.08,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MIE AYAM',
                          style: TextStyle(fontSize: screenWidth * 0.045),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'RP21',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ],
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
