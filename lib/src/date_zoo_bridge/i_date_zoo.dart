import 'dart:convert';
import 'package:ba_zi_energy/ba_zi_energy.dart';

class AnimalCalculationStrategyParams {
  final int timeZoneOffset;
  final int sunRiseHour;
  final int sunRiseMinute;

  const AnimalCalculationStrategyParams({
    required this.timeZoneOffset,
    required this.sunRiseHour,
    required this.sunRiseMinute,
  });

  Map<String, dynamic> toJson() {
    return {
      'timeZoneOffset': timeZoneOffset,
      'sunRiseHour': sunRiseHour,
      'sunRiseMinute': sunRiseMinute,
    };
  }

  factory AnimalCalculationStrategyParams.fromJson(Map<String, dynamic> json) {
    return AnimalCalculationStrategyParams(
      timeZoneOffset: json['timeZoneOffset'] as int,
      sunRiseHour: json['sunRiseHour'] as int,
      sunRiseMinute: json['sunRiseMinute'] as int,
    );
  }

  String toJsonString() {
    return jsonEncode(toJson());
  }

  factory AnimalCalculationStrategyParams.fromJsonString(String jsonString) {
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    return AnimalCalculationStrategyParams.fromJson(json);
  }
}

/// ```Dart
/// String name
/// AnimalSynergy calculate(DateTime dt)
/// ```
abstract class AnimalCalculationStrategy {
  String get name;
  AnimalSynergy calculate(DateTime dt, AnimalCalculationStrategyParams params);
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
