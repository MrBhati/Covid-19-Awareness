// To parse this JSON data, do
//
//     final syptomsData = syptomsDataFromJson(jsonString);

import 'dart:convert';

List<SyptomsData> syptomsDataFromJson(String str) => List<SyptomsData>.from(json.decode(str).map((x) => SyptomsData.fromJson(x)));

String syptomsDataToJson(List<SyptomsData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SyptomsData {
    int id;
    String title;
    String subtitle;
    String discription;
    String imgUil;

    SyptomsData({
        this.id,
        this.title,
        this.subtitle,
        this.discription,
        this.imgUil,
    });

    factory SyptomsData.fromJson(Map<String, dynamic> json) => SyptomsData(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        discription: json["discription"],
        imgUil: json["img_uil"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "discription": discription,
        "img_uil": imgUil,
    };
}
