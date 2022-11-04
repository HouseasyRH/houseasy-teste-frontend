import 'package:flutter/material.dart';

import '../../data/models/animal_model.dart';
import '../../data/services/http_client.dart';

class HomeController with ChangeNotifier {
  final _animalRepository = HttpClient();

  List<AnimalModel> animals = [];
  List<String> types = [];
  List<String> auxTypes = [];
  List<AnimalModel> filterTypes = [];
  bool enabled = false;

//função que recupera a lista de animais via api e atribui a  uma lista inicialmente vazia
//é adicionado um filtro de tipos e adicionado a uma lista
  Future<void> getAnimals() async {
    setLoanding(true);
    animals = await _animalRepository.getAnimals();
    types = animals.map((e) => e.animalType).toSet().toList();
    filterTypes = [];
    auxTypes = [];

    setLoanding(false);
  }

//função que filtra e recupera a lista de animais de determinado tipo
  Future<void> getAnimalsByType(String type) async {
    setLoanding(true);

    auxTypes = types;

    types = [type];

    filterTypes = animals;

    animals =
        filterTypes.where((element) => element.animalType == type).toList();

    setLoanding(false);
  }
  //função que reatribui os valores iniciais a lista de animais

  void setAllAnimals() {
    setLoanding(true);

    if (filterTypes.isNotEmpty) {
      animals = filterTypes;
    }

    types = auxTypes;

    setLoanding(false);
  }

//função que determina o carregamento de algo
  bool loanding = false;
  setLoanding(bool value) {
    loanding = value;
    notifyListeners();
  }
}
