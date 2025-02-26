import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math';

void main() {
  Random random = new Random();
  int randomNumber = random.nextInt(101);
  int skipti = 0;

  bool game = false;
  while (game == false) {
    print('Giskaðu á tölu frá 1 - 100');
    String randomNumberPick = stdin.readLineSync().toString();
    int? randomNumberPick2 = int.parse(randomNumberPick);

    if (randomNumberPick2 == randomNumber) {
      print('Tilraun: $skipti - Vel gert þú giskaðir rétt, talan var $randomNumber');
      skipti = skipti + 1;
      game = true;
    }else if (skipti == 9) {
      print('Of margar tilraunir. GAME OVER');
      return;
    } else if (randomNumberPick2 < randomNumber) {
      skipti = skipti + 1;
      print('Tilraun: $skipti - Hærra');
    } else if (randomNumberPick2 > randomNumber) {
      skipti = skipti + 1;
      print('Tilraun: $skipti - Lægra');
    }
  }
}
