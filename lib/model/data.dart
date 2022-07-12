import 'dart:convert';

List<Introduce> introduceFromJson(String str) => List<Introduce>.from(json.decode(str).map((x) => Introduce.fromJson(x)));

String introduceToJson(List<Introduce> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Introduce {
  Introduce({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory Introduce.fromJson(Map<String, dynamic> json) => Introduce(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
