enum ZooCompatibilityScore {
  problematic(300),
  needsWork(700),
  compatible(1140),
  excellent(1350),
  perfect(1600);

  final int score;
  const ZooCompatibilityScore(this.score);

  static ZooCompatibilityScore fromScore(int score) {
    if (score < problematic.score) {
      return problematic;
    } else if (score < needsWork.score) {
      return needsWork;
    } else if (score < compatible.score) {
      return compatible;
    } else if (score < excellent.score) {
      return excellent;
    } else {
      return perfect;
    }
  }

  static ZooCompatibilityScore? previous(ZooCompatibilityScore score) {
    if (score == problematic) {
      return null;
    } else if (score == needsWork) {
      return problematic;
    } else if (score == compatible) {
      return needsWork;
    } else if (score == excellent) {
      return compatible;
    } else if (score == perfect) {
      return excellent;
    }
    return null;
  }

  static ZooCompatibilityScore? next(ZooCompatibilityScore score) {
    if (score == perfect) {
      return null;
    } else if (score == excellent) {
      return perfect;
    } else if (score == compatible) {
      return excellent;
    } else if (score == needsWork) {
      return compatible;
    } else if (score == problematic) {
      return needsWork;
    }
    return null;
  }
}
