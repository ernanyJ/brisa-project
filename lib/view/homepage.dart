import 'package:brisa_project/models/vehicle.dart';
import 'package:brisa_project/widgets/CarCardWidget.dart';
import 'package:flutter/material.dart';

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
            childAspectRatio: 2 / 3,
          ),
          itemBuilder: (context, index) {
            return CarCard(vehicle: vehicleList[index]);
          }),
    );
  }
}

//WIDGET COM AS INFO CARDS

final List<Vehicle> vehicleList = [
  Vehicle(
    modelo: "Corolla",
    cor: Colors.white,
    placa: "WYZ-023",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "gasolina",
    capacidadeCombustivel: 200,
    quilometragem: 199.000,
    disponivel: true,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
  Vehicle(
    modelo: "Civic",
    cor: Colors.yellow,
    placa: "DGH-283",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "gasolina",
    capacidadeCombustivel: 200,
    quilometragem: 199.000,
    disponivel: true,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
  Vehicle(
    modelo: "Santana",
    cor: Colors.redAccent,
    placa: "321-DDA",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "Diesel",
    capacidadeCombustivel: 200,
    quilometragem: 199.000,
    disponivel: true,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
];
