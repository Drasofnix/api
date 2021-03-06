import 'package:prueba1/constants/imagens.dart';

class Film {
  String? title;
  String? original_title;
  String? original_title_romanised;
  String? description;
  String? director;
  String? producer;
  String? release_date;
  String? running_time;
  String? rt_score;
  String? url;
  String? imagen;

  Film({
    this.title,
    this.original_title,
    this.original_title_romanised,
    this.description,
    this.director,
    this.producer,
    this.release_date,
    this.running_time,
    this.rt_score,
    this.url
  }){
    this.imagen = Imagenes.imagen[title!];
  }

  factory Film.fromMapJson(Map<String, dynamic> data) => Film(
    title: data['title'],
    original_title: data['original_title'],
    original_title_romanised: data['original_title_romanised'],
    description: data['description'],
    director: data['director'],
    producer: data['producer'],
    release_date: data['release_date'],
    running_time: data['running_time'],
    rt_score: data['rt_score'],
    url: data['url'],
  );
}