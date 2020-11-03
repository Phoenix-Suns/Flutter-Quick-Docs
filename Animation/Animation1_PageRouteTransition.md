# Hiệu Ứng chuyển trang

<https://flutter.dev/docs/cookbook/animation/page-route-animation>

- Hiệu ứng đổi màn hình

## Simple Sample

- Tạo Animation Slide Page 2 từ Bottom to Top

```java
// Tạo Route Animation
// Tạo Route cho Page2
Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //return child; // Default animation

        // ----- Tạo Animation -----
        var begin = Offset(0.0, 1.0); // bottom screen
        var end = Offset.zero;  // top screen (0.0, 0.0)
        //var begin = Offset(0.5, 0.5); // Run to Middle Screen

        // --- Single Animation
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      }
  );
}
```

```java
// Tạo 2 Widgets: Page1, Page2
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageRouteTransition'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Page 2'),
          onPressed: () {
            // ----- Sử dụng khi chuyển Widget -----
            Navigator.of(context).push(_createRoute());
          }
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}
```

### Kết hợp nhiều hiệu ứng

(thay // --- Single Animation)

```java
//...
transitionsBuilder: (context, animation, secondaryAnimation, child) {
  // --- Double animation (tween + curve)
  var curve = Curves.ease;
  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  var offsetAnimation = animation.drive(tween);
  return SlideTransition(
    position: offsetAnimation,
    child: child,
  );
}
```

```java
//...
transitionsBuilder: (context, animation, secondaryAnimation, child) {
  // --- Double animation - cách 2 (tween + curve)
  var tween = Tween(begin: begin, end: end);
  var curve = Curves.ease;
  var curvedAnimation = CurvedAnimation(
    parent: animation,
    curve: curve
  );

  return SlideTransition(
    position: tween.animate(curvedAnimation),
    child: child
  );
}
```

---
