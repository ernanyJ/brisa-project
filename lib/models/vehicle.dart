import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Vehicle {
  Image image;
  String modelo;
  Color cor;
  String placa;
  String chassi;
  int anoDeFabricacao;
  double rendimentokm;
  String tipoCombustivel;
  double litrosCombustivel;
  double capacidadeCombustivel;
  double quilometragem;
  bool disponivel;
  bool precisaAbastecer;
  bool precisaManutencao;
  bool temSeguro;
  bool alugado;

  int getFuelPercentage(double capacidade, double combustivelAtual) {
    return ((combustivelAtual / capacidade) * 100).round();
  }

  void fuelNeeder() {
    if (getFuelPercentage(capacidadeCombustivel, litrosCombustivel) < 20.0)
      precisaAbastecer = true;
  }

  Vehicle({
    required this.image,
    required this.modelo,
    required this.cor,
    required this.placa,
    required this.chassi,
    required this.anoDeFabricacao,
    required this.rendimentokm,
    required this.tipoCombustivel,
    required this.litrosCombustivel,
    required this.capacidadeCombustivel,
    required this.quilometragem,
    required this.disponivel,
    required this.precisaAbastecer,
    required this.precisaManutencao,
    required this.temSeguro,
    required this.alugado,
  });
}
