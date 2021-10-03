# Statefull vs Stateless Widget

- [Statefull vs Stateless Widget](#statefull-vs-stateless-widget)
  - [Widget: 1 phần của giao diện](#widget-1-phần-của-giao-diện)
    - [Widget với Material Theme](#widget-với-material-theme)
    - [StatefulWidget: Giao diện thay đổi theo State Objects](#statefulwidget-giao-diện-thay-đổi-theo-state-objects)
    - [StatelessWidget: Giao diện không tự thay đổi (immutable: bất biến)](#statelesswidget-giao-diện-không-tự-thay-đổi-immutable-bất-biến)

## Widget: 1 phần của giao diện

```dart
// simple main
void main() {
  runApp(
      Container(
        color: Colors.red,
        child: Text('Hello!'),
      )
  );
}
```

```dart
// simple Widget
Widget helloRectangle() {
  return Container(
    color: Colors.green,
    child: Text('Hello!'),
  );
}
```

### Widget với Material Theme

(hiện Text ở giữa)

```dart
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

// StatelessWidget: Widget (UI) bất biến, Widget không thay đổi theo Objects
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
          body: Center(
            child: RandomWords()
          )
      ),
    );
  }
}

// StatefulWidget: Widget (UI) thay đổi theo Objects bên trong
class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RandomWordState();
}

class RandomWordState extends State<RandomWords> {
  final wordPair = WordPair.random(); // Create Random word

  @override
  Widget build(BuildContext context) {
    // "Text" thay đổi theo "wordPair"
    return Text(wordPair.asPascalCase);
  }
}
```

### StatefulWidget: Giao diện thay đổi theo State Objects

- Quản lý state
- Override state, return state
- Gọi setState để refresh UI
- Checkbox, radioButton, TextField

```dart
class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RandomWordState();
}

class RandomWordState extends State<RandomWords> {
  final wordPair = WordPair.random(); // Create Random word

  @override
  Widget build(BuildContext context) {
    // "Text" thay đổi theo "wordPair"
    return Text(wordPair.asPascalCase);
  }
}
```

### StatelessWidget: Giao diện không tự thay đổi (immutable: bất biến)

- Không quản lý state
- Override build, return widget
- Text, Button, Icon

```dart
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Widget();
  }
}
```
