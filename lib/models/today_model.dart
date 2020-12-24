import 'dart:convert';

Today todayFromJson(String str) => Today.fromJson(json.decode(str));

String todayToJson(Today data) => json.encode(data.toJson());

class Today {
  Today({
    this.confirmed,
    this.recovered,
    this.hospitalized,
    this.deaths,
    this.newConfirmed,
    this.newRecovered,
    this.newHospitalized,
    this.newDeaths,
    this.updateDate,
    this.source,
    this.devBy,
    this.severBy,
  });

  int confirmed;
  int recovered;
  int hospitalized;
  int deaths;
  int newConfirmed;
  int newRecovered;
  int newHospitalized;
  int newDeaths;
  String updateDate;
  String source;
  String devBy;
  String severBy;

  factory Today.fromJson(Map<String, dynamic> json) => Today(
        confirmed: json["Confirmed"],
        recovered: json["Recovered"],
        hospitalized: json["Hospitalized"],
        deaths: json["Deaths"],
        newConfirmed: json["NewConfirmed"],
        newRecovered: json["NewRecovered"],
        newHospitalized: json["NewHospitalized"],
        newDeaths: json["NewDeaths"],
        updateDate: json["UpdateDate"],
        source: json["Source"],
        devBy: json["DevBy"],
        severBy: json["SeverBy"],
      );

  Map<String, dynamic> toJson() => {
        "Confirmed": confirmed,
        "Recovered": recovered,
        "Hospitalized": hospitalized,
        "Deaths": deaths,
        "NewConfirmed": newConfirmed,
        "NewRecovered": newRecovered,
        "NewHospitalized": newHospitalized,
        "NewDeaths": newDeaths,
        "UpdateDate": updateDate,
        "Source": source,
        "DevBy": devBy,
        "SeverBy": severBy,
      };
}
