import 'package:flutter/material.dart';

const String openAIKey = 'cca7595265856376f8a117128b2e3420';
const String accesstoken =
    "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjY2E3NTk1MjY1ODU2Mzc2ZjhhMTE3MTI4YjJlMzQyMCIsInN1YiI6IjY0ZDY5NTNkYjZjMjY0MTE1NWYwYmRhYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jVWnuU3lu3aLYZyB-6134vKLXmXXdvWriQdH_piOWs0";
const String baseUrl = "https://api.themoviedb.org/3";
const String imagebaseUrl = "https://image.tmdb.org/t/p/";

List options = ['Action', 'Thriller', 'Science', 'Fiction'];
List dates = [
  '5 March',
  '6 March',
  '7 March',
  '8 March',
  '9 March',
  '10 March',
  '11 March',
  '12 March',
  '13 March',
];
String imgMovie = 'assets/images/movie.png';
String imgMovieName = 'assets/images/moviename.png';
String imgSeats = 'assets/images/seats.png';
String imgfilSeats = 'assets/images/fillseates.png';

String numberofseat = "assets/images/number.png";

Widget kWidth(double w) => SizedBox(width: w);
Widget kHeight(double h) => SizedBox(height: h);
