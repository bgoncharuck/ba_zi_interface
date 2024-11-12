import 'package:ba_zi_energy/ba_zi_energy.dart';
import '../date_zoo_bridge/i_date_zoo.dart';

class EnergyRelation {
  const EnergyRelation({
    required this.energy,
    required this.shade,
    required this.favorable,
  });

  final Energy energy;
  final bool shade;
  final bool favorable;

  /// create to String from String methods,
  /// Energy is enum but does not have toString and fromString methods
  @override
  String toString() {
    return 'element:${energy.element},sex:${energy.sex},shade:$shade,favorable:$favorable)';
  }

  static EnergyRelation fromString(String str) {
    final csvParts = str.split(',');
    final elementStr = csvParts[0].split(':')[1];
    final sexStr = csvParts[1].split(':')[1];
    final shadeStr = csvParts[2].split(':')[1];
    final favorableStr = csvParts[3].split(':')[1];

    final element = Element.values.firstWhere((e) => e.name == elementStr);
    final sex = Sex.values.firstWhere((s) => s.name == sexStr);
    final shade = bool.parse(shadeStr);
    final favorable = bool.parse(favorableStr);
    final energy = Energy.fromElement(element, sex);

    return EnergyRelation(
      energy: energy,
      shade: shade,
      favorable: favorable,
    );
  }
}

class TenGods {
  const TenGods({
    required this.supported,
    //
    required this.favorableResource,
    required this.unfavorableResource,
    //
    required this.friends,
    required this.competitors,
    //
    required this.favorableCreation,
    required this.unfavorableCreation,
    //
    required this.career,
    required this.conflict,
    //
    required this.leech,
    required this.partner,
  });

  final bool supported;

  final EnergyRelation favorableResource;
  final EnergyRelation unfavorableResource;

  final EnergyRelation friends;
  final EnergyRelation competitors;

  final EnergyRelation favorableCreation;
  final EnergyRelation unfavorableCreation;

  final EnergyRelation career;
  final EnergyRelation conflict;

  final EnergyRelation partner;
  final EnergyRelation leech;

  @override
  String toString() {
    return 'supported:$supported,'
        'favorableResource:$favorableResource,unfavorableResource:$unfavorableResource,'
        'friends:$friends,competitors:$competitors,'
        'favorableCreation:$favorableCreation,unfavorableCreation:$unfavorableCreation,'
        'career:$career,conflict:$conflict,'
        'leech:$leech,partner:$partner)';
  }

  static TenGods fromString(String str) {
    final csvParts = str.split(',');
    final supportedStr = csvParts[0].split(':')[1];
    final favorableResourceStr = csvParts[1].split(':')[1];
    final unfavorableResourceStr = csvParts[2].split(':')[1];
    final friendsStr = csvParts[3].split(':')[1];
    final competitorsStr = csvParts[4].split(':')[1];
    final favorableCreationStr = csvParts[5].split(':')[1];
    final unfavorableCreationStr = csvParts[6].split(':')[1];
    final careerStr = csvParts[7].split(':')[1];
    final conflictStr = csvParts[8].split(':')[1];
    final leechStr = csvParts[9].split(':')[1];
    final partnerStr = csvParts[10].split(':')[1];

    final supported = bool.parse(supportedStr);
    final favorableResource = EnergyRelation.fromString(favorableResourceStr);
    final unfavorableResource =
        EnergyRelation.fromString(unfavorableResourceStr);
    final friends = EnergyRelation.fromString(friendsStr);
    final competitors = EnergyRelation.fromString(competitorsStr);
    final favorableCreation = EnergyRelation.fromString(favorableCreationStr);
    final unfavorableCreation =
        EnergyRelation.fromString(unfavorableCreationStr);
    final career = EnergyRelation.fromString(careerStr);
    final conflict = EnergyRelation.fromString(conflictStr);
    final leech = EnergyRelation.fromString(leechStr);
    final partner = EnergyRelation.fromString(partnerStr);

    return TenGods(
      supported: supported,
      //
      favorableResource: favorableResource,
      unfavorableResource: unfavorableResource,
      //
      friends: friends,
      competitors: competitors,
      //
      favorableCreation: favorableCreation,
      unfavorableCreation: unfavorableCreation,
      //
      career: career,
      conflict: conflict,
      //
      leech: leech,
      partner: partner,
    );
  }
}

abstract class IElementBalance {
  TenGods elementBalance(IDateZoo zoo, Sex sex);
}
