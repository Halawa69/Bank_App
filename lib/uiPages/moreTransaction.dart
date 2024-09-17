import 'package:flutter/material.dart';

class Fourthpage extends StatefulWidget {
  const Fourthpage({super.key});

  @override
  _FourthpageState createState() => _FourthpageState();
}

class _FourthpageState extends State<Fourthpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 63.0, 24.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  // Navigate back when 'arrow_back' is tapped
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 28.0,
                  color: Color.fromRGBO(133, 133, 133, 1),
                ),
              ),
              const SizedBox(height: 14),
              const Row(
                children: <Widget>[
                  Text(
                    'Transactions',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 9),
                  Text(
                    '2021',
                    style: TextStyle(
                      color: Color.fromRGBO(133, 133, 133, 1),
                      fontFamily: 'Rubik',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              const Row(
                children: <Widget>[
                  Text(
                    'JAN',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontFamily: 'Rubik',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 9),
                  Text(
                    'FEB',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontFamily: 'Rubik',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 9),
                  Text(
                    'MAR',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontFamily: 'Rubik',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 9),
                  Text(
                    'APR',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontFamily: 'Rubik',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 9),
                  Text(
                    'MAY',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontFamily: 'Rubik',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              _buildTransactionCard('Shopping', '\$29.90', 'Tue 12.05.2021'),
              const SizedBox(height: 16.0),
              _buildTransactionCard('Movie Ticket', '\$9.50', 'Mon 11.05.2021'),
              const SizedBox(height: 16.0),
              _buildTransactionCard('Amazon', '\$19.30', 'Mon 11.05.2021'),
              const SizedBox(height: 16.0),
              _buildTransactionCard('Udemy', '\$49.99', 'Fri 8.05.2021'),
              const SizedBox(height: 16.0),
              _buildTransactionCard('Books', '\$14.00', 'Sat 09.05.2021'),
              const SizedBox(height: 16.0),
              _buildTransactionCard('Spotify', '\$8.99', 'Mon 11.03.2021'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionCard(String title, String amount, String date) {
    return Center(
      child: Container(
        width: 350,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  amount,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 9.0),
            Text(
              date,
              style: const TextStyle(
                color: Color.fromRGBO(133, 133, 133, 1),
                fontFamily: 'Rubik',
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
