import 'package:ba_zi_energy/ba_zi_energy.dart';
import '../element_balance/i_element_balance.dart';

class ElementDescriptions {
  ElementDescriptions({
    required this.elementBalance,
    required this.twelveSpheres,
  }) {
    relatePalaceAnimals = {};
    relatePalaceFlavors = {};
    if (twelveSpheres != null) {
      for (var i = 0; i <= 11; i++) {
        relatePalaceAnimals[twelveSpheres![i]!.animal] = i;
        relatePalaceFlavors[twelveSpheres![i]!.flavor] ??= i;
      }
    }

    relateElements = {
      for (final erel in elementBalance.relations) erel.energy: erel.relation,
    };
  }

  final EnergyRoad elementBalance;
  final Map<int, AnimalSynergy>? twelveSpheres;

  late final Map<Energy, RelationArchetype> relateElements;
  late final Map<Animal, int> relatePalaceAnimals;
  late final Map<Energy, int> relatePalaceFlavors;
}
