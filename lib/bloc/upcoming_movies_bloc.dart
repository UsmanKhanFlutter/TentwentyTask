import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:tentwenty_movieapp_task/bloc/upcoming_movies_event.dart';
import 'package:tentwenty_movieapp_task/model/upcoming_movie_model.dart';
import 'package:tentwenty_movieapp_task/utils/api_endpoints.dart';
import 'package:tentwenty_movieapp_task/utils/constants.dart';

part 'upcoming_movies_state.dart';

class UpcomingMoviesBloc extends Bloc<UpcomingMovieEvent, UpcomingMoviesState> {
  UpcomingMoviesBloc() : super(UpcomingMoviesInitial());
  @override
  Stream<UpcomingMoviesState> mapEventToState(UpcomingMovieEvent event) async* {
    if (event is UpcomingMovie) {
      yield UpcomingMoviesloadingState();

      try {
        final response = await _upcomingmovies();
        // print("+++++++++++++++++++++++++++");
        // print(response);
        // print("+++++++++++++++++++++++++++");
        final upcominglist = UpcomingMovies.fromJson(response);
        yield UpcomingMoviesSuccessState(upcominglist);
      } catch (e) {
        // print(e.toString());
        yield UpcomingMoviesErrorState(e.toString());
      }
    }
  }
}

Future<Map<String, dynamic>> _upcomingmovies() async {
  final url = Uri.parse("$baseUrl$upcomingmovies");
  print(url);
  var headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjY2E3NTk1MjY1ODU2Mzc2ZjhhMTE3MTI4YjJlMzQyMCIsInN1YiI6IjY0ZDY5NTNkYjZjMjY0MTE1NWYwYmRhYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jVWnuU3lu3aLYZyB-6134vKLXmXXdvWriQdH_piOWs0'
  };
  final response = await http.get(url, headers: headers);
  print(response.body);

  return jsonDecode(response.body);
}
