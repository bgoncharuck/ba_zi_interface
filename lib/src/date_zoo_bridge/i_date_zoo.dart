import 'dart:convert';
import 'package:ba_zi_energy/ba_zi_energy.dart';

class AnimalCalculationStrategyParams {
  final int timeZoneOffset;
  final int sunSetHour;
  final int sunSetMinute;

  const AnimalCalculationStrategyParams({
    required this.timeZoneOffset,
    required this.sunSetHour,
    required this.sunSetMinute,
  });

  Map<String, dynamic> toJson() {
    return {
      'timeZoneOffset': timeZoneOffset,
      'sunSetHour': sunSetHour,
      'sunSetMinute': sunSetMinute,
    };
  }

  factory AnimalCalculationStrategyParams.fromJson(Map<String, dynamic> json) {
    return AnimalCalculationStrategyParams(
      timeZoneOffset: json['timeZoneOffset'] as int,
      sunSetHour: json['sunSetHour'] as int,
      sunSetMinute: json['sunSetMinute'] as int,
    );
  }

  String toJsonString() {
    return jsonEncode(toJson());
  }

  factory AnimalCalculationStrategyParams.fromJsonString(String jsonString) {
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    return AnimalCalculationStrategyParams.fromJson(json);
  }

  AnimalCalculationStrategyParams copyWith({
    int? timeZoneOffset,
    int? sunSetHour,
    int? sunSetMinute,
  }) {
    return AnimalCalculationStrategyParams(
      timeZoneOffset: timeZoneOffset ?? this.timeZoneOffset,
      sunSetHour: sunSetHour ?? this.sunSetHour,
      sunSetMinute: sunSetMinute ?? this.sunSetMinute,
    );
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
