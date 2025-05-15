import 'package:ba_zi_energy/ba_zi_energy.dart';
import '../date_zoo_bridge/i_date_zoo.dart';
import 'element_descriptions.dart';

class CompatibilityPartner {
  const CompatibilityPartner({
    required this.zoo,
    required this.sex,
    required this.descriptions,
  });

  final IDateZoo zoo;
  final Sex sex;
  final ElementDescriptions descriptions;

  CompatibilityPartner copyWith({
    IDateZoo? zoo,
    Sex? sex,
    ElementDescriptions? descriptions,
  }) {
    return CompatibilityPartner(
      zoo: zoo ?? this.zoo,
      sex: sex ?? this.sex,
      descriptions: descriptions ?? this.descriptions,
    );
  }
}
