import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeigth = (MediaQuery.of(context).size.height);
    final screenWidth = (MediaQuery.of(context).size.width);
    return Container(
      color: const Color.fromARGB(255, 40, 16, 78),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'Veículos',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // CARD THAT DISPLAYS THE LIST OF DRIVERS
          DriversList(screenWidth: screenWidth, screenHeigth: screenHeigth),
        ],
      ),
    );
  }
}

// CONTAINER THAT CONTAINS (DUH) THE LIST OF DRIVERS.
class DriversList extends StatelessWidget {
  const DriversList({
    super.key,
    required this.screenWidth,
    required this.screenHeigth,
  });

  final double screenWidth;
  final double screenHeigth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 270, left: 20),
      color: const Color.fromARGB(88, 0, 0, 0),
      width: screenWidth - 300,
      height: screenHeigth - 73,
      child: Stack(
        children: [
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.indigo[100],
                child: Center(
                    child: const Text("He'd have you all unravel at the")),
              ),
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.blue[200],
                child: Center(child: const Text('Heed not the rabble')),
              ),
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.blue[300],
                child: Center(child: const Text('Sound of screams but the')),
              ),
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.blue[400],
                child: Center(child: const Text('Who scream')),
              ),
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.blue[500],
                child: Center(child: const Text('Revolution is coming...')),
              ),
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.blue[600],
                child: Center(child: const Text('Revolution, they...')),
              ),
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.blue[300],
                child: Center(child: const Text('Sound of screams but the')),
              ),
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.blue[400],
                child: Center(child: const Text('Who scream')),
              ),
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.blue[500],
                child: Center(child: const Text('Revolution is coming...')),
              ),
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(8),
                color: Colors.blue[600],
                child: Center(child: const Text('Revolution, they...')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
