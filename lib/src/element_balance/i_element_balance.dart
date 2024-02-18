import 'package:ba_zi_energy/ba_zi_energy.dart';
import '../date_zoo_bridge/i_date_zoo.dart';

abstract class INeededElements {
  Set<Element> elementsFor(Map<Element, int> elementBalance);
}

Map<Element, int> elementBalance(IDateZoo zoo) {
  int wood = 0;
  int fire = 0;
  int earth = 0;
  int metal = 0;
  int water = 0;

  for (final energy in zoo.energies) {
    switch (energy.element) {
      case Element.Wood:
        wood += 1;
        break;
      case Element.Fire:
        fire += 1;
        break;
      case Element.Earth:
        earth += 1;
        break;
      case Element.Metal:
        metal += 1;
        break;
      case Element.Water:
        water += 1;
        break;
    }
  }

  return {
    Element.Wood: wood,
    Element.Fire: fire,
    Element.Earth: earth,
    Element.Metal: metal,
    Element.Water: water,
  };
}

class ElementWithCoefficient {
  final Element element;
  final double coefficient;

  const ElementWithCoefficient(this.element, this.coefficient);
}
