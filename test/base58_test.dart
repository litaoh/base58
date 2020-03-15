import 'dart:typed_data';

import 'package:base58/base58.dart';
import 'package:hex/hex.dart';
import 'package:test/test.dart';

void main() {
  var hash = Uint8List.fromList([14, 251, 24, 220, 202, 235, 97, 232, 85, 229, 109, 188, 53, 146, 43, 36, 246, 238, 110, 55, 202, 163, 160, 123, 169, 35]);
  var str = 'TcASfmyoFiNobNaCHeiPMkWgGmovoxk1sqk';
  group('base58 encode return String', () {
    test('${hash.toString()} encode ${str}', () {
      var hex = base58.encode(hash);
      expect(str, hex);
    });
  });
  group('base58 decode return String', () {
    test('${hash.toString()} encode ${str}', () {
      var hex = HEX.encode(base58.decode(str));
      expect(HEX.encode(hash), hex);
    });
  });
  
}
