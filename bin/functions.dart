import 'dart:io';
import 'lists.dart';

export 'calc.dart';

/*               opCode Tools                   */
int ProgramAlarm(noun, verb, List<int> code) {
  intCode.removeAt(1);
  intCode.insert(1, noun);
  intCode.removeAt(2);
  intCode.insert(2, verb);
  opCoder(code);
  return intCode[0];
}

int opCoder(List<int> iC) {
  int z;
  int instPointer = 0;
  for (int idx = 0; idx < ((iC.length - 1) / 4) + 1; idx++) {
    if (iC[instPointer] == 1) {
      z = iC[iC[instPointer + 1]] + iC[iC[instPointer + 2]];
      int yep = iC[instPointer + 3];
      intCode.removeAt(yep);
      intCode.insert(yep, z);
    } else if (iC[instPointer] == 2) {
      z = iC[iC[instPointer + 1]] * iC[iC[instPointer + 2]];
      int yep = iC[instPointer + 3];
      intCode.removeAt(yep);
      intCode.insert(yep, z);
    } else if (iC[instPointer] == 99) {
      break;
    }
    instPointer += 4;
  }
  return intCode[0];
}

void opSearchCode(X){
  for (int IDX = 0; IDX < 100; IDX++) {
    int noun = IDX;
    for (int idx = 0; idx < 100; idx++) {
      int verb = idx;
      noun == IDX;

      print('Inputs: [$noun] [$verb]');

      intCode.clear();
      intCode.addAll(intCodeMirror);

      int z = ProgramAlarm(noun, verb, intCode);
      print('Output: [$z]');
      if (z == X) {
        print('Your noun is [$noun]');
        print('Your verb is [$verb]');
        exit(0);

      }
    }
  }
}

/*               Geometry                   */
List<String> splitDirection(list) {
  List<String> direction = [];
  for (int idx = 0; idx < list.length; idx++) {
    direction.add(list[idx].substring(0, 1));
  }
  return direction;
}

List<int> splitDistance(list) {
  List<int> distance = [];
  for (int idx = 0; idx < list.length; idx++) {
    distance.add(
        int.parse(list[idx].substring(1, list[idx].length)));
  }
  return distance;
}





