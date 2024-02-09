// To parse this JSON data, do
//
//     final mechanic = mechanicFromJson(jsonString);

import 'dart:convert';

List<Mechanic> mechanicFromJson(String str) => List<Mechanic>.from(json.decode(str).map((x) => Mechanic.fromJson(x)));

String mechanicToJson(List<Mechanic> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mechanic {
  String name;
  String empId;
  String location;
  String experience;

  Mechanic({
    required this.name,
    required this.empId,
    required this.location,
    required this.experience,
  });

  factory Mechanic.fromJson(Map<String, dynamic> json) => Mechanic(
    name: json["name"],
    empId: json["emp_id"],
    location: json["location"],
    experience: json["Experience"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "emp_id": empId,
    "location": location,
    "Experience": experience,
  };
}
