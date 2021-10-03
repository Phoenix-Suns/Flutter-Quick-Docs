# 1 một số Định Nghĩa

- [1 một số Định Nghĩa](#1-một-số-định-nghĩa)
  - [Build Context](#build-context)
  - [App Dependencies (thêm library)](#app-dependencies-thêm-library)
  - [Flutter Inspector - Debug UI](#flutter-inspector---debug-ui)

## Build Context

- Lấy thông tin của Widget:
  - ngữ cảnh
  - widget cha
  - vị trí, kích thước
- Thay đổi theo Widget

## App Dependencies (thêm library)

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
