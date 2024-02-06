import 'package:flutter/material.dart';

class Vehicle {
  String modelo;
  Color cor;
  String placa;
  String chassi;
  int anoDeFabricacao;
  double rendimentokm;
  String tipoCombustivel;
  double capacidadeCombustivel;
  double quilometragem;
  bool disponivel;
  bool precisaAbastecer;
  bool precisaManutencao;
  bool temSeguro;
  bool alugado;

  Vehicle({
    required this.modelo,
    required this.cor,
    required this.placa,
    required this.chassi,
    required this.anoDeFabricacao,
    required this.rendimentokm,
    required this.tipoCombustivel,
    required this.capacidadeCombustivel,
    required this.quilometragem,
    required this.disponivel,
    required this.precisaAbastecer,
    required this.precisaManutencao,
    required this.temSeguro,
    required this.alugado,
  });
}
