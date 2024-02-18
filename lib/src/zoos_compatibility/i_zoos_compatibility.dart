import 'package:ba_zi_energy/ba_zi_energy.dart';
import '../date_zoo_bridge/i_date_zoo.dart';

class AnimalPair {
  const AnimalPair({
    required this.user,
    required this.partner,
    required this.type,
    required this.weight,
  });
  final Animal user;
  final Animal partner;
  final AnimalPairType type;
  final double weight;
}

class CompatibilityResult {
  final IDateZoo user;
  final IDateZoo partner;
  final Sex userSex;

  //
  final bool perfectPartnerForYourElement;
  final double total;
  final double animals;
  final double elements;
  final List<AnimalPair> pairs;
  final Set<Element> lacking;
  final Set<Element> balanced;

  //
  final bool partnerIsBadForHealth;
  final bool youBadForHealth;
  final bool partnerIsProneToCheating;
  final bool youAreProneToCheating;
  final bool partnerCanBeAbusive;
  final bool youCanBeAbusive;
  final bool partnerIsWealthKiller;
  final bool youAreWealthKiller;

  const CompatibilityResult({
    required this.user,
    required this.partner,
    required this.userSex,

    //
    required this.perfectPartnerForYourElement,
    required this.total,
    required this.animals,
    required this.elements,
    required this.pairs,
    required this.lacking,
    required this.balanced,

    //
    required this.partnerIsBadForHealth,
    required this.youBadForHealth,
    required this.partnerIsProneToCheating,
    required this.youAreProneToCheating,
    required this.partnerCanBeAbusive,
    required this.youCanBeAbusive,
    required this.partnerIsWealthKiller,
    required this.youAreWealthKiller,
  });

  @override
  String toString() {
    return '''
Date: ${partner.dt!}
Day: ${partner.day}
Month: ${partner.month}
Year: ${partner.year}
Zoo Compatibility: $animals
Elements Compatibility: $elements
''';
  }
}

abstract class IZoosCompatibility {
  CompatibilityResult calculate({
    required IDateZoo user,
    required IDateZoo partner,
    required Sex userSex,
  });
}
