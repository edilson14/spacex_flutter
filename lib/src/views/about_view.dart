import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height,
          image: AssetImage('lib/assets/images/rocket.jpeg'),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 160,
            ),
            Text(
              'About Space X',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ],
    );
  }
}
