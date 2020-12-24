import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class PreventationCard extends StatelessWidget {
  const PreventationCard({
    Key key,
    this.iconSrc,
    this.title,
  }) : super(key: key);

  final String iconSrc, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(
            iconSrc,
            width: 80,
            height: 80,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: kPrimaryColor,
                  fontSize: 18,
                ),
          ),
        ],
      ),
    );
  }
}
