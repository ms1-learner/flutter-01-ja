# チャレンジ1

このチャレンジではDartのファイル `convert.dart` が用意されており、ファイル内には2つの変数 `walkman` と `toothpaste` が事前に定義されています。また、関数 `convert` も事前に定義されており、MapのListを引数として受け取り、Listを要素に持つListを返します。

ここでの主なタスクは、Listを内部に含んだListを返すように `convert` 関数を更新することです。内部の各Listには各Mapに関連する値を含める必要があります。

想定される関数の例:

```dart
convert([map1, map2]); // [[map1のすべての値], [map2のすべての値]]
```
