/* 
A API abaixo retorna uma frase aleatório sempre que uma nova
consulta GET é realizada.
Link da API: https://api.senac.estevaorada.com/api/frase
*/
import 'dart:convert';
import 'package:http/http.dart';

class Covid {
 final int mortes;
 final int recuperados;
 final int casoscovid;

// contrutor:
  Covid(
      {this.mortes,
      this.recuperados,
      this.casoscovid
     });

// método de "fabricar" endereços:
  factory Covid.fromJson(Map json) {
    return Covid(
      mortes: json['TotalDeaths'],
      recuperados: json['TotalRecovered'],
      casoscovid: json['TotalConfirmed'],

    );
  }

  // Método para buscar enderecos:
  static Future<Covid> obterDados() async {
    var url = Uri.parse('https://api.covid19api.com/world/total');
    // Chamada assíncrona:
    var resposta = await get(url);
    var json = jsonDecode(resposta.body);
    return Covid.fromJson(json);
  }
}



