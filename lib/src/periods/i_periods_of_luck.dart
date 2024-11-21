import 'package:ba_zi_energy/ba_zi_energy.dart';
import 'package:ba_zi_interface/ba_zi_interface.dart';

class PeriodOfLuck {
  const PeriodOfLuck({
    required this.flavor,
    required this.animal,
    required this.age,
  });

  final Energy flavor;
  final Animal animal;
  final int age;
}

class TransitionYearsFromPeriods {
  const TransitionYearsFromPeriods({
    required this.teen,
    required this.adult,
    required this.authority,
  });

  final int teen;
  final int adult;
  final int authority;
}

abstract class TransitionDate {
  DateTime transition(DateTime dt);
}

abstract class FindPillarAgeStrategy {
  int find(int median, AnimalSynergy synergy);
}

abstract class PeriodSteps {
  List<PeriodOfLuck> create(IDateZoo zoo, int number, int periods);
}

abstract class TenYearsPeriod {
  List<PeriodOfLuck> create({
    required DateTime dt,
    required int timeZoneOffset,
    required IDateZoo zoo,
    required int periods,
    required Sex calcSex,
  });
}

abstract class AnnualPeriod {
  List<PeriodOfLuck> create({
    required int year,
    required int previousYears,
    required int nextYears,
  });
}

abstract class GenerateTransitionYearsStrategy {
  TransitionYearsFromPeriods gen({
    required List<PeriodOfLuck> decades,
    required int birthYear,
    required AnimalSynergy month,
    required AnimalSynergy day,
    required AnimalSynergy? hour,
  });
}
