import 'package:dio/dio.dart';
import 'package:prueba1/models/vehicles_model.dart';

class FilmsProvider{
  final _url = 'https://ghibliapi.herokuapp.com/films';
  final _http = Dio();

  Future<List<Vehicles>> obtenerFilms() async{
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data[''];
    return _data.map((vehicle) => Vehicles.fromMapJson(vehicle)).toList();
  }
}