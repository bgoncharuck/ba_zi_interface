enum ZooCompatibilityScore {
  problematic(250),
  needsWork(600),
  compatible(850),
  excellent(1000),
  perfect(1400);

  final int score;
  const ZooCompatibilityScore(this.score);

  static ZooCompatibilityScore fromScore(int score) {
    if (score >= perfect.score) {
      return perfect;
    } else if (score >= excellent.score) {
      return excellent;
    } else if (score > needsWork.score) {
      return compatible;
    } else if (score > problematic.score) {
      return needsWork;
    } else {
      return problematic;
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
