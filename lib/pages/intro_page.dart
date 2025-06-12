import 'package:flutter/material.dart';
import 'package:my_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Atas
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    const Text(
                      'MADANG MIE',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'lib/images/ramen.png',
                          height: constraints.maxHeight * 0.3, // supaya responsif
                        ),
                      ),
                    ),
                    const Text(
                      'RASANYA ENAK JIR MENDING MAKAN MIE SETIAP HARI',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'makan mie setiap hari sampe usus buntu aja dari pada mabok ya kan.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                
                // Bawah (tombol)
                MyButton(
                  text: "MULAI",
                  onTap: (){
                    //go to the next page
                    Navigator.pushNamed(context, '/menupage');
                  },),
              ],
            );
          },
        ),
      ),
    );
  }
}
