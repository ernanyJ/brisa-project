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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 233, 233, 233),
          borderRadius: BorderRadius.circular(5)),
      width: screenWidth - 120,
      height: screenHeigth * 0.6,
      child: Container(
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 7,
          childAspectRatio: 2 / 3,
          padding: EdgeInsets.all(8),
          children: <Widget>[
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
            CarCard(),
          ],
        ),
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromARGB(38, 0, 0, 0),
      ),
    );
  }
}
