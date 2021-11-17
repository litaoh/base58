# base58

A Dart Base58 Cipher - Encoder/Decoder library for Dart developers. This encoding is typically used for crypto currencies such as Bitcoin.

## Usage

```dart
import 'dart:typed_data';

import 'package:base58/base58.dart';
import 'package:hex/hex.dart';

void main() {
  Uint8List hash =
  HEX.decode('0efb18dccaeb61e855e56dbc35922b24f6ee6e37caa3a07ba923')
  as Uint8List;

  print(base58.encode(hash));
  // => TcASfmyoFiNobNaCHeiPMkWgGmovoxk1sqk

  print(base58.decode('TcASfmyoFiNobNaCHeiPMkWgGmovoxk1sqk'));
  // => [14, 251, 24, 220, 202, 235, 97, 232, 85, 229, 109, 188, 53, 146, 43, 36, 246, 238, 110, 55, 202, 163, 160, 123, 169, 35]
}
```

## LICENSE [MIT](LICENSE)