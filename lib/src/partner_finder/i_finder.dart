import 'package:ba_zi_energy/ba_zi_energy.dart';
import '../date_zoo_bridge/i_date_zoo.dart';
import '../zoos_compatibility/i_zoos_compatibility.dart';

class PartnerFinderParams {
  final IDateZoo user;
  final Sex userSex;
  final DateTime from;
  final DateTime to;

  const PartnerFinderParams({
    required this.user,
    required this.userSex,
    required this.from,
    required this.to,
  });
}

abstract class IPartnerFinder {
  List<CompatibilityResult> find(PartnerFinderParams params);
}
