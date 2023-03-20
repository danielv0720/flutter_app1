import 'package:flutter/material.dart';
import 'package:marvel_app/widgets/custom_image.dart';

class Comic_Detail extends StatelessWidget {
  const Comic_Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: Custom_image(
                child: Image.asset('assets/comics1.jpg'),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Spiderman',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                  text: 'Descrpticon'),
            )
          ],
        ),
      ),
    );
  }
}
