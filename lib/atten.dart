class atten {
  String name;
  int present;
  int total;

  atten({required this.name, required this.present, required this.total});

  double percent() {
    double ans = (present / total) * 100;
    return ans;
  }

  int status() {
    if (percent() > 75) {
      return 0;
    }
    double reqd = 4 * (0.75 * total - present);
    if (reqd.toInt() > reqd) {
      return reqd.toInt() + 1 - present;
    } else {
      return reqd.toInt();
    }
  }
}
