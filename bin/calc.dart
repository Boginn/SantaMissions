int calcFuel(x) {
  int ans = ((x / 3) - 2).floor();
  return ans;
}

double ManhattanDistance(xA,yA,xB,yB) {
  return (xA - xB).abs() + (yA - yB).abs();
}

int deepSum(mod) {
  int totalFuel = 0;
  while (mod > 0) {
    mod = calcFuel(mod);
    if (mod > 0) {
      totalFuel += mod;
    }
  }
  return totalFuel;
}

int loopCalc(int listLength, List list, Function calcType) {
  int totalFuel = 0;
  for (int idx = 0; idx < listLength; idx++) {
    totalFuel += calcType(list[idx]);
  }
  return totalFuel;
}
