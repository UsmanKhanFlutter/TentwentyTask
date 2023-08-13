import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tentwenty_movieapp_task/UI/movie_detail_screen.dart';
import 'package:tentwenty_movieapp_task/bloc/upcoming_movies_bloc.dart';
import 'package:tentwenty_movieapp_task/bloc/upcoming_movies_event.dart';
import 'package:tentwenty_movieapp_task/utils/colors.dart' as colors;
import 'package:tentwenty_movieapp_task/utils/constants.dart';
import 'package:tentwenty_movieapp_task/widgets/custome_nav_bar.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: colors.backgroundcolor,
      body: BlocProvider(
        create: (context) => UpcomingMoviesBloc()..add(UpcomingMovie()),
        child: BlocBuilder<UpcomingMoviesBloc, UpcomingMoviesState>(
          builder: (context, state) {
            if (state is UpcomingMoviesloadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is UpcomingMoviesSuccessState) {
              // print("hi");
              // print(state.upcomingMovies!.results!.length);
              return LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 50.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              'Watch',
                              style: TextStyle(
                                  color: colors.textcolor,
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                            color: colors.backgroundcolor,
                            child: ListView.builder(
                              itemCount: 9, // Number of images
                              itemBuilder: (context, index) {
                                // print(state
                                //     .upcomingMovies.results![index].posterPath);

                                return InkWell(
                                  onTap: () {
                                    /////
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MovieDetailsScreen(
                                                  movieid: state.upcomingMovies
                                                      .results![index].id,
                                                  posterpath: state
                                                      .upcomingMovies
                                                      .results![index]
                                                      .posterPath,
                                                  movietitle: state
                                                      .upcomingMovies
                                                      .results![index]
                                                      .originalTitle,
                                                  releasedate: state
                                                      .upcomingMovies
                                                      .results![index]
                                                      .releaseDate,
                                                  overview: state.upcomingMovies
                                                      .results![index].overview,
                                                )));
                                  },
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: constraints.maxHeight * 0.27,
                                        width: constraints.maxWidth * 0.95,
                                        padding: const EdgeInsets.all(10),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            '${imagebaseUrl}w500${state.upcomingMovies.results![index].posterPath}',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          bottom:
                                              30, // Adjust the position of the text as needed
                                          left:
                                              40, // Adjust the position of the text as needed
                                          child: Text(
                                            state.upcomingMovies.results![index]
                                                    .originalTitle ??
                                                "",
                                            style: const TextStyle(
                                                color: colors.textcolorwhite,
                                                fontFamily: "Poppins",
                                                fontSize: 18,
                                                overflow: TextOverflow.ellipsis,
                                                fontWeight: FontWeight.w500),
                                          ))
                                    ],
                                  ),
                                );
                              },
                            )),
                      ),
                    ],
                  );
                },
              );
            } else if (state is UpcomingMoviesErrorState) {
              return Center(child: Text('Error: ${state.error}'));
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        child: BottomAppBar(
          color: colors.bottomnavcolor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomNavigationBarItem(
                image: Image.asset(
                  "assets/icons/dashboard.png",
                ),
                label: "Dashbord",
                onPressed: () {},
              ),
              CustomNavigationBarItem(
                image: Image.asset(
                  "assets/icons/watch.png",
                ),
                label: "Watch",
                onPressed: () {},
              ),
              CustomNavigationBarItem(
                image: Image.asset(
                  "assets/icons/medialibrary.png",
                ),
                label: "Media Library",
                onPressed: () {},
              ),
              CustomNavigationBarItem(
                image: Image.asset(
                  "assets/icons/List.png",
                  height: 27,
                ),
                label: "More",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
