// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);
import 'dart:convert';

User userFromJson(String str) {
  // Decode the JSON string
  final jsonData = json.decode(str);

  // Check if jsonData is of type Map<String, dynamic>
  if (jsonData is! Map<String, dynamic>) {
    throw const FormatException('Expected a JSON object');
  }

  return User.fromJson(jsonData);
}

class User {
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      website: json['website'] as String,
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
    );
  }
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;
}

class Address {
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: Geo.fromJson(json['geo'] as Map<String, dynamic>),
    );
  }
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;
}

class Geo {
  Geo({
    required this.lat,
    required this.lng,
  });
  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );
  }
  String lat;
  String lng;
}

class Company {
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });
  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );
  }
  String name;
  String catchPhrase;
  String bs;
}
