import 'dart:convert';

Area areaFromJson(String str) => Area.fromJson(json.decode(str));

String areaToJson(Area data) => json.encode(data.toJson());

class Area {
  Area({
    this.data,
    this.source,
    this.devBy,
    this.severBy,
  });

  List<dynamic> data;
  String source;
  String devBy;
  String severBy;

  factory Area.fromJson(Map<String, dynamic> json) => Area(
        data: List<dynamic>.from(json["Data"].map((x) => x)),
        source: json["Source"],
        devBy: json["DevBy"],
        severBy: json["SeverBy"],
      );

  Map<String, dynamic> toJson() => {
        "Data": List<dynamic>.from(data.map((x) => x)),
        "Source": source,
        "DevBy": devBy,
        "SeverBy": severBy,
      };
}
