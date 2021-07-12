import 'package:flutter/material.dart';
import 'package:prueba1/models/film_model.dart';
import 'package:prueba1/providers/film_provider.dart';

class HomePage extends StatelessWidget{
  final _filmsProvider = FilmsProvider();
  @override
  Widget build(BuildContext context) {
  final _mediasize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Studio Ghibli Films',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
          child: FutureBuilder(
            future: _filmsProvider.obtenerFilms(),
            builder: (BuildContext context, AsyncSnapshot<List<Film>> snapShot){
              final listGhibli = snapShot.data;
              if(snapShot.hasData){
                return ListView.builder(
                  itemCount: listGhibli!.length,
                  itemBuilder: (BuildContext context, int i){
                    final ghibli = listGhibli[i];
                    return GestureDetector(
                      onTap: ()=>Navigator.pushNamed(context, 'detalles',arguments: ghibli),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Hero(
                              tag: ghibli.title.toString(),
                              child: Image.network(
                                ghibli.imagen!,
                                height: _mediasize.height * 0.7,
                                width: _mediasize.width * 0.9,
                              ),
                            ),
                          ]
                        ),
                    );
                  },
                );
              }else{
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
      ),
    );
  }
}
