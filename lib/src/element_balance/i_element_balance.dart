import 'package:ba_zi_energy/ba_zi_energy.dart';
import '../date_zoo_bridge/i_date_zoo.dart';

enum RelationArchetype {
  InstitutionalResources,
  InnateResources,
  Personality,
  Character,
  FormalActions,
  RadicalActions,
  EntrepreneurOpportunity,
  Enemy,
  PartnerOpportunity,
  ServiceOpportunity,
}

class ElementRelation {
  const ElementRelation({
    required this.animal,
    required this.relation,
    required this.stem,
  });

  final Animal animal;
  Energy get energy => animal.energy;
  final RelationArchetype relation;
  final bool stem;

  /// create to String from String methods,
  @override
  String toString() {
    return 'animal:$animal,relation:$relation,favorable:$stem)';
  }

  static ElementRelation fromString(String str) {
    final csvParts = str.split(',');
    final animalStr = csvParts[0].split(':')[1];
    final relationStr = csvParts[1].split(':')[1];
    final stemStr = csvParts[2].split(':')[1];

    final animal = Animal.values.firstWhere(
      (e) => e.name == animalStr,
    );
    final relation = RelationArchetype.values.firstWhere(
      (e) => e.name == relationStr,
    );
    ;
    final stem = bool.parse(stemStr);

    return ElementRelation(
      animal: animal,
      relation: relation,
      stem: stem,
    );
  }
}

class EnergyRoad {
  const EnergyRoad({
    required this.supported,
    required this.zoo,
    required this.sex,
    required this.relations,
  });

  final bool supported;
  final IDateZoo zoo;
  final Sex sex;
  final List<ElementRelation> relations;
}

abstract class IElementBalance {
  EnergyRoad elementBalance(IDateZoo zoo, Sex sex);
}
