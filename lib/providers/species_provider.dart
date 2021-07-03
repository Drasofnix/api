import 'package:dio/dio.dart';
import 'package:prueba1/models/species_model.dart';

class FilmsProvider{
  final _url = 'https://ghibliapi.herokuapp.com/films';
  final _http = Dio();

  Future<List<Species>> obtenerFilms() async{
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data[''];
    return _data.map((specie) => Species.fromMapJson(specie)).toList();
  }
}