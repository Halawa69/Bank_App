import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 63.0, 24.0, 0.0),
            child: Column(
              children: <Widget>[
                const Row(
                  children: <Widget>[
                    SizedBox(
                      width: 43, // Set the width of the photo
                      child: CircleAvatar(
                        backgroundImage: AssetImage('Assets/download.png'), // Use your image here
                        radius: 33.0,
                      ),
                    ),
                    SizedBox(width: 90),
                    Text(
                      'Reports',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Rublik',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Add some spacing between rows
                Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE082), // Light yellow color similar to the image
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Money In',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              const Text(
                                '+ \$3,456.98',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.trending_up,
                                color: Colors.purple.shade400,
                                size: 18.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
