import 'dart:io';

import 'functions.dart';
import 'lists.dart';
import 'dart:math';

void main() {

  List<String> cWireAtest02 = [
    'R98',
    'U47',
    'R26',
    'D63',
    'R33',
    'U87',
    'L62',
    'D20',
    'R33',
    'U53',
    'R51'];
  List<String> cWireBtest02 = [
    'U98',
    'R91',
    'D20',
    'R16',
    'D67',
    'R40',
    'U7',
    'R15',
    'U6',
    'R7'];
  List<String> cWireAtest03 = [
    'R75',
    'D30',
    'R83',
    'U83',
    'L12',
    'D49',
    'R71',
    'U7',
    'L72'];
  List<String> cWireBtest03 = [
    'U62',
    'R66',
    'U55',
    'R34',
    'D71',
    'R55',
    'D58',
    'R83'];
// Mætipunktar: fyrir cWiretest01
// = 3+3=6
// = 6+5=11 eða 6+5=11

  List<String> cWireAtest01 = ['R8', 'U5', 'L5', 'D3'];
  List<String> cWireBtest01 = ['U7', 'R6', 'D4', 'L4'];
  List<int> coordinatesA =  [];

  splitDirection(cWireAtest01);
  splitDistance(cWireAtest01);

  int xA=0; // R-L
  int xA2=0;
  int yA=0; // U-D

  int xB=0; // R-L
  int yB=0; // U-D

  for (int idx = 0; idx > cWireAtest01.length; idx++) {
  if (splitDirection(cWireAtest01)[idx] == 'R') {
        xA2 = xA + splitDistance(cWireAtest01)[idx];
            while(xA!=xA2) {
          xA += 1;
          coordinatesA.add(xA);
          coordinatesA.add(yA);
            }
  }
  }
}
