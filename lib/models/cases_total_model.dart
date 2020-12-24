import 'dart:convert';

CasesTotal casesTotalFromJson(String str) =>
    CasesTotal.fromJson(json.decode(str));

String casesTotalToJson(CasesTotal data) => json.encode(data.toJson());

class CasesTotal {
  CasesTotal({
    this.province,
    this.nation,
    this.gender,
    this.lastData,
    this.updateDate,
    this.source,
    this.devBy,
    this.severBy,
  });

  Map<String, int> province;
  Map<String, int> nation;
  Gender gender;
  DateTime lastData;
  String updateDate;
  String source;
  String devBy;
  String severBy;

  factory CasesTotal.fromJson(Map<String, dynamic> json) => CasesTotal(
        province: Map.from(json["Province"])
            .map((k, v) => MapEntry<String, int>(k, v)),
        nation:
            Map.from(json["Nation"]).map((k, v) => MapEntry<String, int>(k, v)),
        gender: Gender.fromJson(json["Gender"]),
        lastData: DateTime.parse(json["LastData"]),
        updateDate: json["UpdateDate"],
        source: json["Source"],
        devBy: json["DevBy"],
        severBy: json["SeverBy"],
      );

  Map<String, dynamic> toJson() => {
        "Province":
            Map.from(province).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Nation":
            Map.from(nation).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Gender": gender.toJson(),
        "LastData": lastData.toIso8601String(),
        "UpdateDate": updateDate,
        "Source": source,
        "DevBy": devBy,
        "SeverBy": severBy,
      };
}

class Gender {
  Gender({
    this.male,
    this.female,
  });

  int male;
  int female;

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
        male: json["Male"],
        female: json["Female"],
      );

  Map<String, dynamic> toJson() => {
        "Male": male,
        "Female": female,
      };
}
