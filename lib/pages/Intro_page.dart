import 'package:flutter/material.dart';
import 'package:hinge/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Padding(padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              'lib/images/logo.png',
              color: Colors.grey,
              height: 240,
            ),
            ),
            const SizedBox(height: 50,),
            const Text("Hinge",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32
            ),
            ),
            const SizedBox(height: 25,),
            const Text("A perfect B2B and B2C solution",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16
            )
            ),
            const SizedBox(height: 40,),

            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 121, 211),
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: Text("Start Shop!", style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            )

          ],
          ),
        ),
      ),
    );
  }
}