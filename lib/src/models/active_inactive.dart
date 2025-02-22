import 'package:ba_zi_energy/ba_zi_energy.dart';

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
