import 'package:flutter/foundation.dart';

class TopRatedMovie {
  String title;
  String backdropPath;
  String overview;
  String voteAverage;
  String posterPath;

  TopRatedMovie({
    required this.title,
    required this.backdropPath,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
  });

  factory TopRatedMovie.fromJson(Map<String, dynamic> json) {
    return TopRatedMovie(
      title: json['title'] ?? "Some title",
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      voteAverage: json['vote_average'].toString(),
    );
  }

  fromJson(TopRatedMovie topRatedMovie) {}
}



// "adult": false,
// "backdrop_path": "/AvsNXUbP7UKCVnypyx2eWp8z2N3.jpg",
// "genre_ids": [
// 16,
// 35,
// 10765
// ],
// "id": 94954,
// "origin_country": [
// "US"
// ],
// "original_language": "en",
// "original_name": "Hazbin Hotel",
// "overview": "In attempt to find a non-violent alternative for reducing Hell's overpopulation, the daughter of Lucifer opens a rehabilitation hotel that offers a group of misfit demons a chance at redemption.",
// "popularity": 300.047,
// "poster_path": "/dTiZBcnMHSMfc4QVIbgULIWPcwL.jpg",
// "first_air_date": "2024-01-18",
// "name": "Hazbin Hotel",
// "vote_average": 9.022,
// "vote_count": 793