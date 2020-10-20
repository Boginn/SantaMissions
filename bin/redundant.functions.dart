import 'dart:io';
import 'lists.dart';
import 'functions.dart';

List<int> opFetcher(iC) {
  List<int> intChecklist = [];
  for (int idx = 0; idx < ((iC.length - 1) / 4) + 1; idx = idx + 4) {
    intChecklist.add(intCode[idx + 1]);
    intChecklist.add(intCode[idx + 2]);
  }
  return intChecklist;
}

void opSearchCode(intCodeMirror) {
  for (int idx = 0; idx < opFetcher(intCodeMirror).length; idx = idx + 2) {
    int verb = intCodeMirror[opFetcher(intCodeMirror)[idx + 0]];
    int noun = intCodeMirror[opFetcher(intCodeMirror)[idx + 1]];
    // int noun = opFetcher(intCodeMirror)[idx + 0];
    // int verb = opFetcher(intCodeMirror)[idx + 1];
    print('Inputs: [$verb] [$noun]');
    intCode.clear();
    intCode.addAll(intCodeMirror);
    if (noun >= 0 && noun <= 99 && verb >= 0 && verb <= 99) {
      int z = ProgramAlarm(verb, noun, intCode);
      print('Output: [$z]');
      if (z == 19690720) {
        print('Your noun is [$noun]');
        print('Your verb is [$verb]');
        break;
      }
    }
  }
}

// int opCodeCheck(String statement, List<int> iC) {
//   int z;
//   int instPointer = 0;
//   for (int idx = 0; idx < ((iC.length - 1) / 4) + 1; idx++) {
//     if (iC[instPointer] == 1) {
//       z = iC[iC[instPointer + 1]] + iC[iC[instPointer + 2]];
//       int yep = iC[instPointer + 3];
//       intCode.removeAt(yep);
//       intCode.insert(yep, z);
//     } else if (iC[instPointer] == 2) {
//       z = iC[iC[instPointer + 1]] * iC[iC[instPointer + 2]];
//       int yep = iC[instPointer + 3];
//       intCode.removeAt(yep);
//       intCode.insert(yep, z);
//     } else if (iC[instPointer] == 99) {
//       // print('[Opcoder] $statement: ${intCode[0]}');
//       // exit(0);
//       break;
//     }
//     instPointer += 4;
//   }
//   return checklist;
// }
