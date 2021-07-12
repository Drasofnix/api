import 'package:flutter/material.dart';
import 'package:prueba1/models/film_model.dart';

class Detalles extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Film ghibli = ModalRoute.of(context)!.settings.arguments as Film;
    final texttitlestyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    final textdatastyle = TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: Text(ghibli.title!,style: texttitlestyle,),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            _Imagen(ghibli),
            Container(
              margin: EdgeInsets.only(left: 20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title',style: texttitlestyle,),
                  Text(ghibli.title!,style: textdatastyle,),
                  Text('Original Title',style: texttitlestyle,),
                  Text(ghibli.original_title!,style: textdatastyle,),
                  Text('Original Title Romanised',style: texttitlestyle,),
                  Text(ghibli.original_title_romanised!,style: textdatastyle,),
                  Text('Description',style: texttitlestyle,),
                  Text(ghibli.description!,style: textdatastyle,),
                  Text('Director',style: texttitlestyle,),
                  Text(ghibli.director!,style: textdatastyle,),
                  Text('Producer',style: texttitlestyle,),
                  Text(ghibli.producer!,style: textdatastyle,),
                  Text('Release Date',style: texttitlestyle,),
                  Text(ghibli.release_date!,style: textdatastyle,),
                  Text('Time',style: texttitlestyle,),
                  Text(ghibli.running_time!,style: textdatastyle,),
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}

class _Imagen extends StatelessWidget{
  final texttitlestyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  final Film ghibli;
  _Imagen(this.ghibli);
  @override
  Widget build(BuildContext context) {
    final _mediasize = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [ 
        Hero(
          tag: ghibli.title.toString(),
          child: Center(
            child: Image.network(
              ghibli.imagen!,
              height: _mediasize.height * 0.50,
              width: _mediasize.width * 0.50,
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 10,
          child: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 150,
          ),
        ),
        Positioned(
          right: 80,
          bottom: 55,
          child: Text(ghibli.rt_score!,style: texttitlestyle,),
        ),
      ]
    );
  }
}