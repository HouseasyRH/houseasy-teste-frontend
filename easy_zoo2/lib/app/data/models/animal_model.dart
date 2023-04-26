import 'dart:convert';

class AnimalModel {
  int id;
  String name;
  String latinName;
  String animalType;
  String activeTime;
  String lengthMin;
  String lengthMax;
  String weightMin;
  String weightMax;
  String lifespan;
  String habitat;
  String diet;
  String geoRange;
  String imageLink;

  AnimalModel({
    required this.id,
    required this.name,
    required this.latinName,
    required this.animalType,
    required this.activeTime,
    required this.lengthMin,
    required this.lengthMax,
    required this.weightMin,
    required this.weightMax,
    required this.lifespan,
    required this.habitat,
    required this.diet,
    required this.geoRange,
    required this.imageLink,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'latin_name': latinName});
    result.addAll({'animal_type': animalType});
    result.addAll({'active_time': activeTime});
    result.addAll({'length_min': lengthMin});
    result.addAll({'length_max': lengthMax});
    result.addAll({'weight_min': weightMin});
    result.addAll({'weight_max': weightMax});
    result.addAll({'lifespan': lifespan});
    result.addAll({'habitat': habitat});
    result.addAll({'diet': diet});
    result.addAll({'geo_range': geoRange});
    result.addAll({'image_link': imageLink});

    return result;
  }

  factory AnimalModel.fromMap(Map<String, dynamic> map) {
    return AnimalModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      latinName: map['latin_name'] ?? '',
      animalType: map['animal_type'] ?? '',
      activeTime: map['active_time'] ?? '',
      lengthMin: map['length_min'] ?? '',
      lengthMax: map['length_max'] ?? '',
      weightMin: map['weight_min'] ?? '',
      weightMax: map['weight_max'] ?? '',
      lifespan: map['lifespan'] ?? '',
      habitat: map['habitat'] ?? '',
      diet: map['diet'] ?? '',
      geoRange: map['geo_range'] ?? '',
      imageLink: map['image_link'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimalModel.fromJson(String source) =>
      AnimalModel.fromMap(json.decode(source));
}
