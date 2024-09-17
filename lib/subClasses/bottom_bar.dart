import 'package:firstapp/uiPages/card.dart';
import 'package:firstapp/uiPages/moreTransaction.dart';
import 'package:firstapp/uiPages/transaction.dart';
import 'package:firstapp/uiPages/chart.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const String routNamed = '/bottom_bar';
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
    const Fourthpage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ), // Use IndexedStack to preserve state of each page
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 82,
        decoration: BoxDecoration(
          color: Colors.white,
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
            unselectedItemColor: Colors.grey,
            selectedItemColor: const Color(0xFF133FDB),
            selectedLabelStyle: const TextStyle(
              color: Color(0xFF133FDB),
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.grey,
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
