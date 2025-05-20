import 'package:ba_zi_energy/ba_zi_energy.dart';

const energyFusions = [
  {Energy.FireYang, Energy.MetalYin},
  {Energy.WaterYang, Energy.FireYin},
  {Energy.EarthYang, Energy.WaterYin},
  {Energy.WoodYang, Energy.EarthYin},
  {Energy.MetalYang, Energy.WoodYin},
];

class TwoAnimalGroups {
  final List<Animal> first;
  final List<Animal> second;
  const TwoAnimalGroups({required this.first, required this.second});
}

class PartnersFusionResult {
  final List<Iterable<Animal>> matches;
  final List<Animal> remainingFirst;
  final List<Animal> remainingSecond;
  const PartnersFusionResult({
    required this.matches,
    required this.remainingFirst,
    required this.remainingSecond,
  });
}

class PartnersEnergyFusionResult {
  final List<Iterable<Energy>> matches;
  final List<Energy> remainingFirst;
  final List<Energy> remainingSecond;
  const PartnersEnergyFusionResult({
    required this.matches,
    required this.remainingFirst,
    required this.remainingSecond,
  });
}

class ActiveAndInactiveAnimals {
  const ActiveAndInactiveAnimals({
    required this.active,
    required this.inactive,
  });

  final List<Animal> active;
  final List<Iterable<Animal>> inactive;
}

class ActiveAndConflictingAnimals {
  const ActiveAndConflictingAnimals({
    required this.active,
    required this.conflicting,
  });

  final List<Animal> active;
  final List<Iterable<Animal>> conflicting;
}

class ActiveAndInactiveEnergies {
  const ActiveAndInactiveEnergies({
    required this.active,
    required this.inactive,
  });

  final List<Energy> active;
  final List<Iterable<Energy>> inactive;
}

class ActiveAndInactiveAnimalAndEnergies extends ActiveAndInactiveEnergies {
  const ActiveAndInactiveAnimalAndEnergies({
    required this.activeAnimals,
    required super.active,
    required super.inactive,
  });

  final List<Animal> activeAnimals;
}
