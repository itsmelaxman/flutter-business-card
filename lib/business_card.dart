import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Business Card',
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/village-bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
              ),
              shadowColor: Colors.grey.withOpacity(
                0.8,
              ),
              elevation: 4,
              borderOnForeground: true,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.79,
                    padding: EdgeInsets.zero,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.compost_outlined,
                                    color: Colors.green[800],
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Lorem Foundation',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 50,
                          ),
                          rowIconText(
                            icon: Icons.email_outlined,
                            value: 'lorem.ipsum@gmail.com',
                          ),
                          const SizedBox(height: 7),
                          rowIconText(
                            icon: Icons.phone_in_talk_outlined,
                            value: "9800000000",
                          ),
                          const SizedBox(height: 7),
                          rowIconText(
                            icon: Icons.share_location_sharp,
                            value: 'Panauti-8, Kavre, Nepal',
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    height: 230,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/back.jpg'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
        ],
      ),
    );
  }

  rowIconText({String value = '', icon}) {
    return Container(
      height: 15,
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Icon(
            icon,
            size: 15,
            color: const Color(0XFF042F66),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
