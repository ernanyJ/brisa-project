import 'package:brisa_project/constants/CarsColors.dart';
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
    image: 'images/corolla.png',
    modelo: "Corolla",
    cor: colorWhite,
    placa: "WYZ-023",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "gasolina",
    litrosCombustivel: 27,
    capacidadeCombustivel: 50,
    quilometragem: 199.000,
    disponivel: true,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
  Vehicle(
    image: 'images/hb20.png',
    modelo: "HB20",
    cor: colorWhite,
    placa: "DGH-283",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "gasolina",
    litrosCombustivel: 43,
    capacidadeCombustivel: 50,
    quilometragem: 199.000,
    disponivel: true,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
  Vehicle(
    image: 'images/etios.png',
    modelo: "Etios",
    cor: colorBlack,
    placa: "321-DDA",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "Diesel",
    litrosCombustivel: 33,
    capacidadeCombustivel: 45,
    quilometragem: 199.000,
    disponivel: true,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
  Vehicle(
    image: 'images/s10.png',
    modelo: "S-10",
    cor: colorRed,
    placa: "S10-BVC",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "Diesel",
    litrosCombustivel: 58,
    capacidadeCombustivel: 76,
    quilometragem: 199.000,
    disponivel: false,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
  Vehicle(
    image: 'images/hilux.png',
    modelo: "Hilux",
    cor: colorRed,
    placa: "L20-BBB",
    chassi: "2341",
    anoDeFabricacao: 2019,
    rendimentokm: 16,
    tipoCombustivel: "Diesel",
    litrosCombustivel: 75,
    capacidadeCombustivel: 80,
    quilometragem: 199.000,
    disponivel: false,
    precisaAbastecer: false,
    precisaManutencao: false,
    temSeguro: true,
    alugado: true,
  ),
];
