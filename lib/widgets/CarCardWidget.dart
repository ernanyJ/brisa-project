import 'package:brisa_project/models/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CarCard extends StatelessWidget {
  void setImageScale() {}
  Vehicle vehicle;
  late String image;

  CarCard({super.key, required this.vehicle, required String? image});

  CarCard.withImage(this.vehicle, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(242, 255, 255, 255),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(vehicle.cor.value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(image, scale: 1.3),
              ),
              Container(
                margin: const EdgeInsets.only(top: 140, left: 10),
                child: Text(
                  vehicle.modelo,
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 165, left: 10),
                child: Text(
                  "Placa: ${vehicle.placa}",
                  style: GoogleFonts.roboto(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Cor:",
                  style: GoogleFonts.roboto(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
