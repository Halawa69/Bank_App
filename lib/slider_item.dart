import 'package:firstapp/slide_model.dart';
import 'package:flutter/material.dart';

class SliderItem extends StatefulWidget {
  final int index; // Add index as a final variable in the SliderItem widget

  const SliderItem({super.key, required this.index}); // Require index in the constructor

  @override
  _SliderItemState createState() => _SliderItemState();
}

class _SliderItemState extends State<SliderItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(slidelist[widget.index].imageUrl),
            const SizedBox(height: 50),
            Text(
              slidelist[widget.index].title,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            Center(
              child: Text(
                slidelist[widget.index].description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
