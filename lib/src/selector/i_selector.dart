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
    required this.calcParams,
  });
  final DateTime from;
  final DateTime to;
  final Set<AnimalSynergy> day;
  final Set<AnimalSynergy> month;
  final Set<AnimalSynergy> year;
  final AnimalCalculationStrategyParams calcParams;

  factory SelectorParams.fromParams({
    required DateTime from,
    required DateTime to,
    required AnimalCalculationStrategyParams calcParams,
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
        calcParams: calcParams,
        day: createAnimalSet(dayAnimal ?? {}, dayElement ?? {}),
        month: createAnimalSet(monthAnimal ?? {}, monthElement ?? {}),
        year: createAnimalSet(yearAnimal ?? {}, yearElement ?? {}),
      );

  factory SelectorParams.fromMonthYearParams({
    required DateTime from,
    required DateTime to,
    required AnimalCalculationStrategyParams calcParams,
    required Set<AnimalSynergy> day,
    Set<Element>? monthElement,
    Set<Animal>? monthAnimal,
    Set<Element>? yearElement,
    Set<Animal>? yearAnimal,
  }) =>
      SelectorParams(
        from: from,
        to: to,
        calcParams: calcParams,
        day: day,
        month: createAnimalSet(monthAnimal ?? {}, monthElement ?? {}),
        year: createAnimalSet(yearAnimal ?? {}, yearElement ?? {}),
      );
}

abstract class ISelector {
  List<IDateZoo> select(SelectorParams params);
  IDateZoo? selectOne(SelectorParams params);
}
