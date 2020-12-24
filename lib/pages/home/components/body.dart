import 'package:covid19_app/pages/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'cases_card.dart';
import 'preventation_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.only(top: 20, bottom: 40, left: 20, right: 20),
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Preventations",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PreventationCard(
                  iconSrc: "assets/icons/hand_wash.svg",
                  title: "Wash Hands",
                ),
                PreventationCard(
                  iconSrc: "assets/icons/use_mask.svg",
                  title: "Use Masks",
                ),
                PreventationCard(
                  iconSrc: "assets/icons/Clean_Disinfect.svg",
                  title: "Clean Disinfect",
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .4,
                      top: 20,
                      right: 20,
                    ),
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF60BE93),
                          Color(0xFF1B8D59),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Dial 999 for \nMedical Help!\n",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(color: Colors.white),
                          ),
                          TextSpan(
                            text: "If any symptoms appear",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SvgPicture.asset("assets/icons/nurse.svg"),
                  ),
                  Positioned(
                    top: 30,
                    right: 10,
                    child: SvgPicture.asset("assets/icons/virus.svg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
