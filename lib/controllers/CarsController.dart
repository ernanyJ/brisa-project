import 'package:brisa_project/models/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarsController {
  int getAvailableCars() {
    var available = 0.obs;
    vehicleList.forEach((car) {
      if (car.disponivel) {
        available++;
      }
    });
    return available.value;
  }

  int getOcuppiedCars() {
    var ocuppied = 0.obs;
    vehicleList.forEach((car) {
      if (!car.disponivel) {
        ocuppied++;
      }
    });
    return ocuppied.value;
  }
}

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
  Vehicle(
    modelo: "S-10",
    cor: Colors.redAccent,
    placa: "S10-BVC",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "Diesel",
    capacidadeCombustivel: 200,
    quilometragem: 199.000,
    disponivel: false,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
  Vehicle(
    modelo: "L200",
    cor: Colors.redAccent,
    placa: "L20-BBB",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "Diesel",
    capacidadeCombustivel: 200,
    quilometragem: 199.000,
    disponivel: false,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
];
