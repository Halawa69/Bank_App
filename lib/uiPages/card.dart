
import 'package:firstapp/uiPages/moreTransaction.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -74, // Adjust the position as needed
              left: 251, // Adjust the position as needed
              child: Container(
                width: 200, // Adjust the size as needed
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(248, 225, 146, 1), // Replace with the color you got from the image
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 246, // Adjust the position as needed
              left: -72, // Adjust the position as needed
              child: Container(
                width: 200, // Adjust the size as needed
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(47, 203, 252, 0.3), // Replace with the color you got from the image
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Your existing content
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 63.0, 24.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('Assets/download.png'), // Use your image here
                        radius: 33.0,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Rublik',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'ANDREA',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Rublik',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Current Balance',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Rubik',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '\$12567.89',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Rubik',
                              fontSize: 28.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(16.0),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF133FDB),
                            Color(0x4DFFC0CB),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: const IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '3452 1235 7894 1678',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'IBMPlexMono',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              '05/2025',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'IBMPlexMono',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'LAST transactions',
                          style: TextStyle(
                            color: Color.fromARGB(133, 133, 133, 1),
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the TransactionsPage when 'More' is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Fourthpage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.only(right: 20.0), // Align to the right
                          child: const Text(
                            'View More >',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Shopping',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '\$29.90',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Tue 12.05.2021',
                            style: TextStyle(
                              color: Color.fromARGB(133, 133, 133, 1),
                              fontFamily: 'Rubik',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Movie Ticket',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '\$9.50',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Mon 11.05.2021',
                            style: TextStyle(
                              color: Color.fromARGB(133, 133, 133, 1),
                              fontFamily: 'Rubik',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Amazon',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '\$19.30',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Mon 11.05.2021',
                            style: TextStyle(
                              color: Color.fromARGB(133, 133, 133, 1),
                              fontFamily: 'Rubik',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Udemy',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '\$49.99',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Fri 8.05.2021',
                            style: TextStyle(
                              color: Color.fromARGB(133, 133, 133, 1),
                              fontFamily: 'Rubik',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Spotify',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '\$8.99',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Mon 11.03.2021',
                            style: TextStyle(
                              color: Color.fromARGB(133, 133, 133, 1),
                              fontFamily: 'Rubik',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}