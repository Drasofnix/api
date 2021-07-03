import 'package:dio/dio.dart';
import 'package:prueba1/models/people_model.dart';

class PeopleProvider{
  final _url = 'https://ghibliapi.herokuapp.com/films';
  final _http = Dio();

  Future<List<People>> obtenerFilms() async{
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data[''];
    return _data.map((people) => People.fromMapJson(people)).toList();
  }
}