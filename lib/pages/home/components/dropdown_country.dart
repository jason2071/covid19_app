import 'package:covid19_app/components/round_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DropdownCountry extends StatelessWidget {
  const DropdownCountry({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      color: kPrimaryColor.withOpacity(0.03),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return RoundBottomSheet(
                height: SizeConfig.screenHeight * 0.8,
                child: Column(
                  children: [
                    Text(
                      "Country",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Divider(),
                    Expanded(
                      child: ListView.separated(
                        itemCount: 3,
                        separatorBuilder: (context, index) => Divider(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/maps-and-flags.svg",
                                  color: kPrimaryColor,
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Welcomw",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Color(0xFFE5E5E5),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/maps-and-flags.svg",
                color: kPrimaryColor,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  'Thailand',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SvgPicture.asset(
                "assets/icons/dropdown.svg",
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
