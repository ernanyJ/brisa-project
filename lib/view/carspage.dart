import 'package:brisa_project/controllers/CarsController.dart';

import 'package:brisa_project/widgets/CarCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeigth = (MediaQuery.of(context).size.height);
    final screenWidth = (MediaQuery.of(context).size.width);
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(255, 40, 16, 78),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(174, 0, 0, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.only(bottom: 150),
                    width: 300,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "ATIVOS",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          width: 1000,
                          height: 2,
                          color: Colors.green,
                        ),
                        Center(
                          child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Obx(
                                () => Text(
                                  "${CarsController().getAvailableCars()}",
                                  style: GoogleFonts.roboto(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(174, 0, 0, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.only(bottom: 150),
                    width: 300,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "OCUPADOS",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          width: 1000,
                          height: 2,
                          color: Colors.red,
                        ),
                        Center(
                          child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Obx(
                                () => Text(
                                  "${CarsController().getOcuppiedCars()}",
                                  style: GoogleFonts.roboto(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(174, 0, 0, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.only(bottom: 150),
                    width: 300,
                    height: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(174, 0, 0, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.only(bottom: 150),
                    width: 300,
                    height: 150,
                  ),
                ),
              ],
            ),

            // CARD THAT DISPLAYS THE LIST OF DRIVERS
            DriversList(screenWidth: screenWidth, screenHeigth: screenHeigth),
          ],
        ),
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
          color: const Color.fromARGB(174, 0, 0, 0),
          borderRadius: BorderRadius.circular(5)),
      width: screenWidth - 120,
      height: screenHeigth * 0.6,
      child: GridView.builder(
          itemCount: vehicleList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 4,
          ),
          itemBuilder: (context, index) {
            return CarCard.withImage(
                vehicleList[index], vehicleList[index].image);
          }),
    );
  }
}

//WIDGET COM AS INFO CARDS


