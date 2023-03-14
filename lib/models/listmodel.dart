// To parse this JSON data, do
//
//     final images = imagesFromJson(jsonString);

import 'dart:convert';

List<Images> imagesFromJson(String str) =>
    List<Images>.from(json.decode(str).map((x) => Images.fromJson(x)));

String imagesToJson(List<Images> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Images {
  Images({
    this.genus,
    this.name,
    this.id,
    this.family,
    this.order,
    this.nutritions,
  });

  final String? genus;
  final String? name;
  final int? id;
  final String? family;
  final String? order;
  final Nutritions? nutritions;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        genus: json["genus"],
        name: json["name"],
        id: json["id"],
        family: json["family"],
        order: json["order"],
        nutritions: json["nutritions"] == null
            ? null
            : Nutritions.fromJson(json["nutritions"]),
      );

  Map<String, dynamic> toJson() => {
        "genus": genus,
        "name": name,
        "id": id,
        "family": family,
        "order": order,
        "nutritions": nutritions?.toJson(),
      };
}

class Nutritions {
  Nutritions({
    this.carbohydrates,
    this.protein,
    this.fat,
    this.calories,
    this.sugar,
  });

  final double? carbohydrates;
  final double? protein;
  final double? fat;
  final int? calories;
  final double? sugar;

  factory Nutritions.fromJson(Map<String, dynamic> json) => Nutritions(
        carbohydrates: json["carbohydrates"]?.toDouble(),
        protein: json["protein"]?.toDouble(),
        fat: json["fat"]?.toDouble(),
        calories: json["calories"],
        sugar: json["sugar"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "carbohydrates": carbohydrates,
        "protein": protein,
        "fat": fat,
        "calories": calories,
        "sugar": sugar,
      };
}
