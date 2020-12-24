import 'package:covid19_app/pages/detail/detail_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'cases_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.03),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Wrap(
        runSpacing: 20,
        spacing: 20,
        children: [
          CaeseCard(
            title: "Confirmed Cases",
            iconColor: Color(0xFFFF8C00),
            effectedNum: 1062,
            press: () {},
          ),
          CaeseCard(
            title: "Total Deaths",
            iconColor: Color(0xFFFF2D55),
            effectedNum: 75,
            press: () {},
          ),
          CaeseCard(
            title: "Total Recovered",
            iconColor: Color(0xFF50E3C2),
            effectedNum: 689,
            press: () {},
          ),
          CaeseCard(
            title: "New Cases",
            iconColor: Color(0xFF5856D6),
            effectedNum: 75,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
