import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _selectedIndex = 1; // Set the initially selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                    SizedBox(width: 20),
                    Spacer(),
                    Text(
                      'Transfer',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Rublik',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.add, size: 35.0),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'Assets/img.png',
                      width: 80,
                    ),
                    Image.asset(
                      'Assets/img_1.png',
                      width: 80, // Set the width of the image if needed
                    ),
                    Image.asset(
                      'Assets/img_2.png',
                      width: 80, // Set the width of the image if needed
                    ),
                    Image.asset(
                      'Assets/img_3.png',
                      width: 80, // Set the width of the image if needed
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Center(
                  child: Container(
                    width: 327,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE6B0AA), // Light pink color
                                  Color(0xFFB0C4DE), // Light blue color
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 24.0,
                              backgroundColor: Colors.transparent, // Make the background transparent
                              child: Text(
                                'ES',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12.0), // Space between avatar and text
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Evelyn Smith',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 4.0), // Space between name and ID
                              Text(
                                'AW BANK UNI 234-46589-000',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Container(
                    width: 327,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(244, 201, 109, 1), // Light yellow color
                                  Color.fromRGBO(154, 214, 233, 1), // Light blue color
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 24.0,
                              backgroundColor: Colors.transparent, // Make the background transparent
                              child: Text(
                                'EA',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12.0), // Space between avatar and text
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Emily Atkinson',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 4.0), // Space between name and ID
                              Text(
                                'AW BANK UNI 234-46589-000',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Container(
                    width: 327,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(224, 195, 252, 1), // Light purple color
                                  Color.fromRGBO(142, 197, 252, 1), // Light blue color
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 24.0,
                              backgroundColor: Colors.transparent, // Make the background transparent
                              child: Text(
                                'SB',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12.0), // Space between avatar and text
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Sophie Baker',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 4.0), // Space between name and ID
                              Text(
                                'AW BANK UNI 234-46589-000',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Container(
                    width: 327,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE6B0AA), // Light pink color
                                  Color(0xFFB0C4DE), // Light blue color
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 24.0,
                              backgroundColor: Colors.transparent, // Make the background transparent
                              child: Text(
                                'OW',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12.0), // Space between avatar and text
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Oliver Wilson',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 4.0), // Space between name and ID
                              Text(
                                'AW BANK UNI 234-46589-000',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Container(
                    width: 327,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 239, 233, 1), // Light blue color
                                  Color.fromRGBO(219, 186, 239, 1), // Light purple color
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 24.0,
                              backgroundColor: Colors.transparent, // Make the background transparent
                              child: Text(
                                'CW',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12.0), // Space between avatar and text
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Charlie William',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 4.0), // Space between name and ID
                              Text(
                                'AW BANK UNI 234-46589-000',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: 375,
        height: 82,
        decoration: BoxDecoration(
          color: Colors.white, // Set the background color to white
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: const Color(0xFF133FDB), // Selected item color
            unselectedItemColor: Colors.grey, // Unselected item color
            selectedLabelStyle: const TextStyle(
              color: Color(0xFF133FDB), // Selected label color
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.grey, // Unselected label color
            ),
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? const GradientIcon(Icons.credit_card, size: 30.0, gradient: LinearGradient(
                  colors: [Color(0xFF133FDB), Color(0x4DFFC0CB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ))
                    : const Icon(Icons.credit_card, size: 30.0),
                label: 'Cards',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? const GradientIcon(Icons.send, size: 30.0, gradient: LinearGradient(
                  colors: [Color(0xFF133FDB), Color(0x4DFFC0CB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ))
                    : const Icon(Icons.send, size: 30.0),
                label: 'Transfer',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? const GradientIcon(Icons.bar_chart, size: 30.0, gradient: LinearGradient(
                  colors: [Color(0xFF133FDB), Color(0x4DFFC0CB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ))
                    : const Icon(Icons.bar_chart, size: 30.0),
                label: 'Chart',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 3
                    ? const GradientIcon(Icons.more_horiz, size: 30.0, gradient: LinearGradient(
                  colors: [Color(0xFF133FDB), Color(0x4DFFC0CB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ))
                    : const Icon(Icons.more_horiz, size: 30.0),
                label: 'More',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final LinearGradient gradient;

  const GradientIcon(this.icon, {required this.size, required this.gradient, super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient.createShader(bounds);
      },
      child: Icon(
        icon,
        size: size,
        color: Colors.white, // Icon color
      ),
    );
  }
}
