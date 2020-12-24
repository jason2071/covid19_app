import 'dart:convert';

Cases casesFromJson(String str) => Cases.fromJson(json.decode(str));

String casesToJson(Cases data) => json.encode(data.toJson());

class Cases {
  Cases({
    this.data,
    this.lastData,
    this.updateDate,
    this.source,
    this.devBy,
    this.severBy,
  });

  List<Datum> data;
  DateTime lastData;
  String updateDate;
  String source;
  String devBy;
  String severBy;

  factory Cases.fromJson(Map<String, dynamic> json) => Cases(
        data: List<Datum>.from(json["Data"].map((x) => Datum.fromJson(x))),
        lastData: DateTime.parse(json["LastData"]),
        updateDate: json["UpdateDate"],
        source: json["Source"],
        devBy: json["DevBy"],
        severBy: json["SeverBy"],
      );

  Map<String, dynamic> toJson() => {
        "Data": List<dynamic>.from(data.map((x) => x.toJson())),
        "LastData": lastData.toIso8601String(),
        "UpdateDate": updateDate,
        "Source": source,
        "DevBy": devBy,
        "SeverBy": severBy,
      };
}

class Datum {
  Datum({
    this.confirmDate,
    this.no,
    this.age,
    this.gender,
    this.genderEn,
    this.nation,
    this.nationEn,
    this.province,
    this.provinceId,
    this.district,
    this.provinceEn,
    this.detail,
    this.statQuarantine,
  });

  DateTime confirmDate;
  String no;
  double age;
  String gender;
  String genderEn;
  String nation;
  String nationEn;
  String province;
  int provinceId;
  String district;
  String provinceEn;
  dynamic detail;
  int statQuarantine;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        confirmDate: DateTime.parse(json["ConfirmDate"]),
        no: json["No"] == null ? null : json["No"],
        age: json["Age"].toDouble(),
        gender: json["Gender"],
        genderEn: json["GenderEn"],
        nation: json["Nation"],
        nationEn: json["NationEn"],
        province: json["Province"],
        provinceId: json["ProvinceId"],
        district: json["District"],
        provinceEn: json["ProvinceEn"],
        detail: json["Detail"],
        statQuarantine: json["StatQuarantine"],
      );

  Map<String, dynamic> toJson() => {
        "ConfirmDate": confirmDate.toIso8601String(),
        "No": no == null ? null : no,
        "Age": age,
        "Gender": gender,
        "GenderEn": genderEn,
        "Nation": nation,
        "NationEn": nationEn,
        "Province": province,
        "ProvinceId": provinceId,
        "District": district,
        "ProvinceEn": provinceEn,
        "Detail": detail,
        "StatQuarantine": statQuarantine,
      };
}
