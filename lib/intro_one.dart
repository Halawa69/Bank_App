import 'package:firstapp/sign.dart';
import 'package:firstapp/slide_model.dart';
import 'package:firstapp/slider_item.dart';
import 'package:firstapp/sign.dart';
import 'package:flutter/material.dart';

class IntroOne extends StatefulWidget {
  static const String routeNamed = '/intro_one';
  const IntroOne({super.key});

  @override
  _IntroOneState createState() => _IntroOneState();
}

class _IntroOneState extends State<IntroOne> {
  int _currentIndex = 0;  // Shouldn't be final because it needs to change

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 160.0, 24.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Set a fixed height for the PageView
                SizedBox(
                  height: 500,  // Adjust height as needed
                  child: PageView.builder(
                    itemCount: slidelist.length,
                    onPageChanged: (int index) {
                      setState(() {
                        _currentIndex = index;  // Update the current index
                      });
                    },
                    itemBuilder: (ctx, i) => SliderItem(index: i),  // Pass the index correctly
                  ),
                ),
                const SizedBox(height: 60),
                DotIndicator(
                  currentIndex: _currentIndex,
                  totalDots: slidelist.length,  // Dynamically set total dots
                ),
                const SizedBox(height: 40),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignUp.routeName);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  final int currentIndex;
  final int totalDots;

  const DotIndicator({
    required this.currentIndex,
    required this.totalDots,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalDots,
            (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex ? Colors.blue : Colors.grey,
          ),
        ),
      ),
    );
  }
}
