import 'package:flutter/material.dart';
import 'package:tentwenty_movieapp_task/UI/proceed_pay_screen.dart';
import 'package:tentwenty_movieapp_task/utils/constants.dart';
import 'package:tentwenty_movieapp_task/utils/colors.dart' as colors;

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              'The King’s Man',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  color: colors.textcolorblack,
                  fontSize: 16),
            ),
            Text(
              'In theaters december 22, 2021',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  color: colors.textcolorblue,
                  fontSize: 12),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            kHeight(100),
            const Text(
              'Dates',
              style: TextStyle(
                  color: colors.textcolorblack,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 16),
            ),
            kHeight(12),
            SizedBox(
              height: size.height * 0.045,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dates.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: size.width * 0.18,
                    decoration: BoxDecoration(
                      color: const Color(0xff61C3F2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        dates[index],
                        style: const TextStyle(
                            color: colors.textcolorwhite,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontSize: 12),
                      ),
                    ),
                  );
                },
              ),
            ),
            kHeight(30),
            SizedBox(
              height: size.height * 0.30,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: SizedBox(
                      width: size.width * 0.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                '  12:50',
                                style: TextStyle(
                                    color: colors.textcolorblack,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                    fontSize: 12),
                              ),
                              Text(
                                '  Cinetech + hall 1',
                                style: TextStyle(
                                    color: colors.textcolorgray,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          kHeight(4),
                          Center(
                            child: Container(
                              height: size.height * 0.2,
                              width: size.width * 0.8,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: const Color(0xff61C3F2),
                                ),
                              ),
                              child: Image.asset(
                                height: size.height * 0.12,
                                width: size.width * 0.6,
                                imgSeats,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          kHeight(8),
                          const Text.rich(TextSpan(
                              text: '  From',
                              style: TextStyle(
                                  color: colors.textcolorgray,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Poppins",
                                  fontSize: 12),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: ' 50\$',
                                  style: TextStyle(
                                      color: colors.textcolorblack,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                      fontSize: 12),
                                ),
                                TextSpan(
                                  text: '  or ',
                                  style: TextStyle(
                                      color: colors.textcolorgray,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                      fontSize: 12),
                                ),
                                TextSpan(
                                  text: ' 2500 bonus',
                                  style: TextStyle(
                                      color: colors.textcolorblack,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                      fontSize: 12),
                                ),
                              ]))
                          // const Text(
                          //   '  From 50\$ or 2500 bonus',
                          //   style: TextStyle(
                          //       color: colors.textcolorblack,
                          //       fontWeight: FontWeight.w500,
                          //       fontFamily: "Poppins",
                          //       fontSize: 12),
                          // )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PaymentScreen()));
              },
              child: Container(
                height: size.height * 0.07,
                width: size.width * 0.8,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff61C3F2),
                ),
                child: const Center(
                  child: Text(
                    'Select Seat',
                    style: TextStyle(
                        color: colors.textcolorwhite,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            kHeight(8),
          ],
        ),
      ),
    );
  }
}
