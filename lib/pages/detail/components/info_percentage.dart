import 'package:flutter/material.dart';

import '../../../constants.dart';

class InfoPercentage extends StatelessWidget {
  const InfoPercentage({
    Key key,
    this.percent,
    this.title,
  }) : super(key: key);

  final String percent, title;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "$percent% \n",
            style: TextStyle(
              fontSize: 20,
              color: kPrimaryColor,
            ),
          ),
          TextSpan(
            text: title,
            style: TextStyle(
              color: kTextMediumColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
