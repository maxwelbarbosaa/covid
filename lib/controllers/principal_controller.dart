import 'dart:ffi';

import 'package:flutter/material.dart';

import '../models/covid_model.dart';

class MainController {
var covidNoMundo = TextEditingController();
var resultMortes = '';
var resultRecuperados = '';
var resultCasosCovid = '';

// Método de buscar os ifos do model 
Future <void> buscar () async {
// instanciando:
var obj = Covid();
obj = await Covid.obterDados();
resultMortes= "Mortes: ${obj.mortes}";
resultRecuperados = "Recuperados: ${obj.recuperados}";
resultCasosCovid = "Casos Covid: ${obj.casoscovid}";

}

}