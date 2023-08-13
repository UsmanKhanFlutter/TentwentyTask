import 'package:flutter/material.dart';
import 'package:tentwenty_movieapp_task/utils/constants.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'The Kings Play',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              'In theaters december 22, 2021',
              style: TextStyle(color: Color(0xff61C3F2), fontSize: 15),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.5,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    kWidth(10),
                    Image.asset(
                      numberofseat,
                      fit: BoxFit.cover,
                    ),
                    kWidth(25),
                    Image.asset(
                      imgfilSeats,
                      width: size.width * 0.8,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                kHeight(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.white, child: Icon(Icons.add)),
                    kWidth(10),
                    const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.remove)),
                    kWidth(10),
                  ],
                ),
                kHeight(20),
                Container(
                  height: 3,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
                kHeight(10),
              ],
            ),
          ),
          Container(
            // width: size.width,
            // height: size.height * 0.5,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.bookmarks,
                              color: Colors.amber,
                            ),
                            kWidth(10),
                            const Text('Selected')
                          ],
                        ),
                        kWidth(50),
                        Row(
                          children: [
                            const Icon(
                              Icons.bookmarks,
                              color: Colors.grey,
                            ),
                            kWidth(10),
                            const Text('Not regular')
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.bookmarks,
                              color: Colors.deepPurple,
                            ),
                            kWidth(10),
                            const Text('VIP (150)')
                          ],
                        ),
                        kWidth(50),
                        Row(
                          children: [
                            const Icon(
                              Icons.bookmarks,
                              color: Color(0xff61C3F2),
                            ),
                            kWidth(10),
                            const Text('Selected')
                          ],
                        ),
                      ],
                    ),
                  ),
                  kHeight(10),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('4 / 3 Row'),
                          Icon(
                            Icons.highlight_remove_sharp,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                  kHeight(10),
                  Row(
                    children: [
                      Container(
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Price'),
                                Text(
                                  '\$ 50',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      kWidth(10),
                      Expanded(
                        child: Container(
                          height: size.height * 0.08,
                          decoration: BoxDecoration(
                              color: const Color(0xff61C3F2),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                              'Proceed to pay',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
