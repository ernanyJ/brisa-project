import 'package:brisa_project/constants/CarsColors.dart';
import 'package:brisa_project/models/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CarCard extends StatelessWidget {
  void setImageScale() {}
  Vehicle vehicle;
  late String image;

  CarCard({super.key, required this.vehicle, required String? image});

  CarCard.withImage(this.vehicle, this.image);

  @override
  Widget build(BuildContext context) {
    var scale = 1.3.obs;
    return Obx(
      () => Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(242, 255, 255, 255),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: MediaQuery.of(context).size.width,
                  height: scale.value == 1.3 ? 1 * 110 : 1 * 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 209, 209, 209),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(143, 73, 73, 73),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (_) {
                    scale.value = 1.2;
                  },
                  onExit: (_) {
                    scale.value = 1.3;
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(image, scale: scale.value),
                  ),
                ),
                Row(
                  children: [
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: vehicle.disponivel
                            ? const Color.fromARGB(255, 44, 172, 48)
                            : const Color.fromARGB(255, 224, 81, 71),
                      ),
                      margin: const EdgeInsets.only(top: 140, left: 10),
                      width: 10,
                      height: 10,
                    )
                  ],
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
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10),
                  child: Text(
                    "Cor do veículo:",
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 5),
                  child: Text(
                    "${returnColor(vehicle.cor)}",
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Stack(children: [
              LinearPercentIndicator(
                barRadius: const Radius.circular(5),
                center: const Text(
                  "Combustível: 20 %",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(1, 1),
                            blurRadius: 2.0)
                      ]),
                ),
                animation: true,
                lineHeight: 15.0,
                percent: 0.2,
                progressColor: const Color.fromARGB(255, 38, 202, 66),
                backgroundColor: const Color.fromARGB(255, 51, 73, 55),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  static returnColor(Color color) {
    if (color == const Color.fromARGB(255, 236, 77, 65)) return "Vermelho";
    if (color == const Color.fromARGB(255, 236, 236, 236)) return "Branco";
    if (color == const Color.fromARGB(255, 19, 19, 19)) return "Preto";
  }
}
