# 1 một số Định Nghĩa

## Simple Example: Không dùng Theme

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

## Simple Example 2: Material Theme

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

## App Dependencies (library)

- Thêm trong file: **pubspec.yaml**

```yaml
dependencies:
  // ...
  // Thêm tại đây
  english_words: ^3.1.0
```

- Chạy để cài đặt Dependency mới: **$ Packages get**
- Chạy để update Dependency mới: **$ Packages upgrade**

## Flutter Inspector - Debug UI

- Menu View/ Window Tools/ Flutter Inspector
- <https://flutter.dev/docs/development/tools/devtools/inspector>
- <https://www.youtube.com/watch?time_continue=268&v=ZwN7stRkwFs>

## Widget: 1 phần của giao diện

### StatelessWidget: Giao diện không tự thay đổi (immutable: bất biến)

### StatefulWidget: Giao diện thay đổi theo State Objects

