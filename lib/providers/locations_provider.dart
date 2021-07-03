import 'package:dio/dio.dart';
import 'package:prueba1/models/locations_model.dart';

class LocationsProvider{
  final _url = 'https://ghibliapi.herokuapp.com/locations';
  final _http = Dio();

  Future<List<Locations>> obtenerFilms() async{
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data[''];
    return _data.map((location) => Locations.fromMapJson(location)).toList();
  }
}