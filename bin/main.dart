import 'dart:io';
import 'dart:math';

void main() {
  var rand = Random();

  stdout.write('Enter the characters to try in the password: ');
  var input = stdin.readLineSync()!.split('');

  stdout.write('Enter the password to crack: ');
  var password = stdin.readLineSync()!;

  var guessedPassword = '';
  var step = 0;

  while (true) {
    step++;
    print('Trying password... $guessedPassword');
    if (password == guessedPassword) {
      break;
    } else {
      guessedPassword = '';
      for (var i = 0; i < password.length; i++) {
        guessedPassword += input[rand.nextInt(input.length)];
      }
    }
  }
  print('Your password is $password and it was cracked in $step steps.');
}
