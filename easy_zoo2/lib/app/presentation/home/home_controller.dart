import 'package:easy_zoo/app/data/infra/http_client/http_client.dart';
import 'package:easy_zoo/app/data/models/animal_model.dart';
import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  final _animalRepository = HttpClient();

  List<AnimalModel> animals = [];

  Future<void> getAnimals() async {
    setLoanding(true);
    animals = await _animalRepository.getAnimals();
    setLoanding(false);
  }

  bool loanding = false;
  setLoanding(bool value) {
    loanding = value;
    notifyListeners();
  }
}
