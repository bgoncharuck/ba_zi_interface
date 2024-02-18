import 'package:ba_zi_energy/ba_zi_energy.dart';
import '../date_zoo_bridge/i_date_zoo.dart';

/// ```Dart
/// DateTime from
/// DateTime to
/// Set<AnimalSynergy> day
/// Set<AnimalSynergy> month
/// Set<AnimalSynergy> year
/// ```
class SelectorParams {
  const SelectorParams({
    required this.from,
    required this.to,
    required this.day,
    required this.month,
    required this.year,
  });
  final DateTime from;
  final DateTime to;
  final Set<AnimalSynergy> day;
  final Set<AnimalSynergy> month;
  final Set<AnimalSynergy> year;

  factory SelectorParams.fromParams({
    required DateTime from,
    required DateTime to,
    Set<Element>? dayElement,
    Set<Animal>? dayAnimal,
    Set<Element>? monthElement,
    Set<Animal>? monthAnimal,
    Set<Element>? yearElement,
    Set<Animal>? yearAnimal,
  }) =>
      SelectorParams(
        from: from,
        to: to,
        day: createAnimalSet(dayAnimal ?? {}, dayElement ?? {}),
        month: createAnimalSet(monthAnimal ?? {}, monthElement ?? {}),
        year: createAnimalSet(yearAnimal ?? {}, yearElement ?? {}),
      );

  factory SelectorParams.fromMonthYearParams({
    required DateTime from,
    required DateTime to,
    required Set<AnimalSynergy> day,
    Set<Element>? monthElement,
    Set<Animal>? monthAnimal,
    Set<Element>? yearElement,
    Set<Animal>? yearAnimal,
  }) =>
      SelectorParams(
        from: from,
        to: to,
        day: day,
        month: createAnimalSet(monthAnimal ?? {}, monthElement ?? {}),
        year: createAnimalSet(yearAnimal ?? {}, yearElement ?? {}),
      );
}

abstract class ISelector {
  List<IDateZoo> select(SelectorParams params);
  IDateZoo? selectOne(SelectorParams params);
}
