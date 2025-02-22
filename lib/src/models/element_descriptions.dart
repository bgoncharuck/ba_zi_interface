import 'package:ba_zi_energy/ba_zi_energy.dart';
import '../element_balance/i_element_balance.dart';

class ElementDescriptions {
  ElementDescriptions({
    required this.elementBalance,
    required this.twelveSpheres,
  }) {
    if (twelveSpheres == null) {
      relateAnimals = {};
    } else {
      relateAnimals = {
        for (var i = 0; i <= 11; i++) twelveSpheres![i]!.animal: i,
      };
    }

    relateElements = {
      for (final erel in elementBalance.relations) erel.energy: erel.relation,
    };
  }

  final EnergyRoad elementBalance;
  final Map<int, AnimalSynergy>? twelveSpheres;

  late final Map<Energy, RelationArchetype> relateElements;
  late final Map<Animal, int> relateAnimals;
}
