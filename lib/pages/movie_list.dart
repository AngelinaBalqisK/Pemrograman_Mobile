import 'package:basic_flutter7/service/http_service.dart';
import 'package:flutter/material.dart';

class MovieList extends StatefulWidget{
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context){
    service.getPopulationMovies().then((values))=> {
      setState(() {
        result = value;
      })
    };
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies"),
      ),
      body: Container(
        child: Text(result),
      ),
    );
  }
}
class _MovieListState extends State<MovieList>{
  String result = "";
  HttpService service;

  @override
  void initState(){
    service = HttpService();
    super.initState();
  }
}