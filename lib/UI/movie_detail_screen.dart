import 'package:flutter/material.dart';
import 'package:tentwenty_movieapp_task/UI/select_seat.dart';
import 'package:tentwenty_movieapp_task/UI/videoplayercreen.dart';
import 'package:tentwenty_movieapp_task/utils/colors.dart';
import 'package:tentwenty_movieapp_task/utils/constants.dart';
import 'package:tentwenty_movieapp_task/utils/colors.dart' as colors;

class MovieDetailsScreen extends StatelessWidget {
  final int? movieid;
  final String? movietitle;
  final String? releasedate;
  final String? overview;

  final String? posterpath;
  const MovieDetailsScreen(
      {super.key,
      this.movieid,
      this.posterpath,
      this.movietitle,
      this.releasedate,
      this.overview});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.55,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('${imagebaseUrl}w500$posterpath'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                kHeight(20),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    kWidth(10),
                    const Text(
                      'Watch',
                      style: TextStyle(
                          color: colors.textcolorwhite,
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  movietitle.toString(),
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                // Image.asset(imgMovieName),
                //In theaters december 22, 2021
                Text(
                  "In theaters: $releasedate",
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                kHeight(10),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BookingScreen()));
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.6,
                    decoration: BoxDecoration(
                      color: const Color(0xff61C3F2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Get Ticket',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
                kHeight(10),
                GestureDetector(
                  onTap: () {
                    // var route = MaterialPageRoute(
                    //   builder: (context) {
                    //     return const VideoPlayerScreen(
                    //         videoUrl: "https://www.barbie-themovie.com");
                    //   },
                    // );
                    // Navigator.of(context).push(route);
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.6,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff61C3F2),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                          Text(
                            'Watch Tailor',
                            style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                kHeight(20),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.45,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight(20),
                  const Text(
                    'Genres',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: colors.textcolorblack,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  kHeight(12),
                  SizedBox(
                    height: size.height * 0.045,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: size.width * 0.18,
                          decoration: BoxDecoration(
                            color: chipcolors[index],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              options[index],
                              style: const TextStyle(
                                  color: colors.textcolorwhite,
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  kHeight(12),
                  const Divider(
                    color: Colors.black,
                    thickness: 0.2,
                  ),
                  kHeight(5),
                  const Text(
                    "Overview",
                    style: TextStyle(
                        color: colors.textcolorblack,
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500),
                  ),
                  kHeight(3),
                  Text(
                    overview.toString(),
                    style: const TextStyle(
                      color: colors.textcolorblack,
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.4,
                      // overflow: TextOverflow.ellipsis
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
