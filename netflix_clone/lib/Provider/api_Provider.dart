import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/api_key/constant_api.dart';
import 'package:netflix_clone/model/topRated_Movie_model.dart';
import 'package:http/http.dart' as http;

class Api extends ChangeNotifier {
  late Future<List<TopRatedMovie>> topratedMovie;

  void initList() {
    topratedMovie = getDataFromAPI();
    notifyListeners();
  }

  static const _topRatingMovies =
      "https://api.themoviedb.org/3/tv/top_rated?api_key=${Constants.apiKey}";

  Future<List<TopRatedMovie>> getDataFromAPI() async {
    final response = await http.get(Uri.parse(_topRatingMovies));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body)["results"];
      print("successful");

      List<TopRatedMovie> movies = jsonData
          .map((jsonMovie) => TopRatedMovie.fromJson(jsonMovie))
          .toList();

      return movies;
    } else {
      throw Exception("Not connected");
    }
  }
}
