import 'dart:typed_data';

import 'package:base58/base58.dart';
import 'package:hex/hex.dart';
import 'package:test/test.dart';

void main() {
  String hashHex = '0efb18dccaeb61e855e56dbc35922b24f6ee6e37caa3a07ba923';
  Uint8List hash = HEX.decode(hashHex) as Uint8List;
  String str = 'TcASfmyoFiNobNaCHeiPMkWgGmovoxk1sqk';
  group('base58 encode return String', () {
    test('$hashHex encode $str', () {
      String hex = base58.encode(hash);
      expect(str, hex);
    });
  });
  group('base58 decode return String', () {
    test('$hashHex encode $str', () {
      String hex = HEX.encode(base58.decode(str));
      expect(hashHex, hex);
    });
  });
}
