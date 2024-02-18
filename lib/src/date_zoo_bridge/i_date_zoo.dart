import 'package:ba_zi_energy/ba_zi_energy.dart';

/// ```Dart
/// String name
/// AnimalSynergy calculate(DateTime dt)
/// ```
abstract class AnimalCalculationStrategy {
  String get name;
  AnimalSynergy calculate(DateTime dt);
}

/// ```Dart
/// DateTime? dt
/// AnimalSynergy year
/// AnimalSynergy month
/// AnimalSynergy day
/// List<Animal> animals
/// List<Energy> energies
/// ```
abstract class IDateZoo {
  DateTime? get dt;
  AnimalSynergy get year;
  AnimalSynergy get month;
  AnimalSynergy get day;
  List<Animal> get animals;
  List<Energy> get energies;
}
