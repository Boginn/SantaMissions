import 'functions.dart';
import 'lists.dart';

void main() {
  int firstFuel = loopCalc(mods.length, mods, calcFuel); // 3161483
  print(firstFuel);
  int secondFuel = loopCalc(mods.length, mods, deepSum); // 4739374
  print(secondFuel);
}
