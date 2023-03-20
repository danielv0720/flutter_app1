// To parse this JSON data, do
//
//     final nowComicsResponde = nowComicsRespondeFromJson(jsonString);

import 'dart:convert';

import 'comic.dart';

class NowComicsResponde {
  NowComicsResponde({
    required this.code,
    required this.status,
    required this.copyright,
    required this.attributionText,
    required this.attributionHtml,
    required this.etag,
    required this.data,
  });

  int code;
  String status;
  String copyright;
  String attributionText;
  String attributionHtml;
  String etag;
  Data data;

  factory NowComicsResponde.fromRawJson(String str) =>
      NowComicsResponde.fromJson(json.decode(str));

  factory NowComicsResponde.fromJson(Map<String, dynamic> json) =>
      NowComicsResponde(
        code: json["code"],
        status: json["status"],
        copyright: json["copyright"],
        attributionText: json["attributionText"],
        attributionHtml: json["attributionHTML"],
        etag: json["etag"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "copyright": copyright,
        "attributionText": attributionText,
        "attributionHTML": attributionHtml,
        "etag": etag,
        "data": data.toJson(),
      };
}
