import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          Container(
            margin: const EdgeInsets.only(right: 270, left: 20),
            color: const Color.fromARGB(88, 0, 0, 0),
            width: 1500,
            height: 800,
          ),
        ],
      ),
    );
  }
}
