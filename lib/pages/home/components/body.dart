import 'package:covid19_app/models/api_response.dart';
import 'package:covid19_app/models/today_model.dart';
import 'package:covid19_app/pages/detail/detail_screen.dart';
import 'package:covid19_app/services/home_service.dart';
import 'package:covid19_app/utils/format_decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../../../constants.dart';
import 'cases_card.dart';
import 'preventation_card.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  HomeService get service => GetIt.I<HomeService>();

  Today today = Today();
  APIResponse<Today> _apiResponse;
  bool _isLoading = false;

  @override
  void initState() {
    _fetchNotes();
    super.initState();
  }

  _fetchNotes() async {
    setState(() {
      _isLoading = true;
    });

    _apiResponse = await service.getTodayData();
    today = _apiResponse.data;

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 15, bottom: 30, left: 20, right: 20),
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
                  title: "New Confirmed",
                  iconColor: Color(0xFFFF8C00),
                  effectedNum: formatDecimal(today.newConfirmed),
                  press: () {},
                ),
                CaeseCard(
                  title: "Confirmed",
                  iconColor: Color(0xFFFF8C00),
                  effectedNum: formatDecimal(today.confirmed),
                  press: () {},
                ),
                CaeseCard(
                  title: "New Recovered",
                  iconColor: Color(0xFF50E3C2),
                  effectedNum: formatDecimal(today.newRecovered),
                  press: () {},
                ),
                CaeseCard(
                  title: "Recovered",
                  iconColor: Color(0xFF50E3C2),
                  effectedNum: formatDecimal(today.recovered),
                  press: () {},
                ),
                CaeseCard(
                  title: "New Hospitalized",
                  iconColor: Color(0xFF5856D6),
                  effectedNum: formatDecimal(today.newHospitalized),
                  press: () {},
                ),
                CaeseCard(
                  title: "Hospitalized",
                  iconColor: Color(0xFF5856D6),
                  effectedNum: formatDecimal(today.hospitalized),
                  press: () {},
                ),
                CaeseCard(
                  title: "New Deaths",
                  iconColor: Color(0xFFFF2D55),
                  effectedNum: formatDecimal(today.newDeaths),
                  press: () {},
                ),
                CaeseCard(
                  title: "Deaths",
                  iconColor: Color(0xFFFF2D55),
                  effectedNum: formatDecimal(today.deaths),
                  press: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Preventations",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(height: 15),
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
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
