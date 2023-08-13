part of 'upcoming_movies_bloc.dart';

abstract class UpcomingMoviesState {}

class UpcomingMoviesInitial extends UpcomingMoviesState {}

class UpcomingMoviesloadingState extends UpcomingMoviesState {}

class UpcomingMoviesSuccessState extends UpcomingMoviesState {
  final UpcomingMovies upcomingMovies;
  UpcomingMoviesSuccessState(this.upcomingMovies);
}

class UpcomingMoviesErrorState extends UpcomingMoviesState {
  final String error;

  UpcomingMoviesErrorState(this.error);
}
