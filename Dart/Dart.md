# Chú ý trong Dart

## const vs final

- final: Có thể thay đổi (mảng, giá trị tự do)
- const: Compile tại ngày thời điểm khởi tạo (nếu có thay đổi, vẫn dùng giá trị lúc khởi tạo)

## FILE TYPE

*.dart

## HELLO WORLD

```java
void main() {
    print('hello word');
}
```

## COMMENT

```java
// In line Comment

/* Mutilple
comment */

/// Documentation comments
///
/// Documentation comments, Documentation comments
/// Documentation comments, Documentation comments
class Llama {}
```

## Metadata

```java
@deprecated
@override
```

## VARIABLE

### _Declare, Assign Variable

```java
var name = 'Bob';
String name = 'Bob';

// Dynamic type
dynamic name = 'Bob';
Object name = 'Bob';
```

### _Variable Types

```java
int
double
Strings
Booleans
```

### _Constant/ final

```java
final name = 'Bob'; // not allow assign again

const bar = 1000000; // not allow change again
// Valid compile-time constants as of Dart 2.5.
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: "int"}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.
```

### Type cast

```java
i as int
```

### Type Parse

```java
int.parse('1');
1.toString();
3.14159.toStringAsFixed(2);
```

### Default value is "null"

### _Generic Variable - kiểu chung T

```java
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// Using
var nameSet = Cache<String>.getByKey("names");
```

## ENUM

```java
enum Color { red, green, blue }

// Using
Color.red           //get value
Color.green.index   //get index
List<Color> colors = Color.values;  // Convert to List
```

## OPERATOR

```java
+ - / *  ~/(divide, return int result) %(divide, return remainder)
num++    num--    ()    []    .    ?.
-num    !num    ~num    ++num    --num      await num
==    !=   >=    >    <=    <    as    is    is!
&& || ??
<<    >>    >>> & ^ |
=    *=    /=   +=   -=   &=   ^=
..
expr1 ? expr2 : expr3
name ?? 'Guest'
```

### Cascade notation(..)

```java
var button = querySelector('#confirm');
button.text = 'Confirm';
button.classes.add('important');
button.onClick.listen((e) => window.alert('Confirmed!'));

// we can replace above to below
querySelector('#confirm') // Get an object.
  ..text = 'Confirm' // Use its members.
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'));
```

## STRING

```java
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

// Multiline
var s1 = '''
You can create
multi-line strings like this one.
''';
var s2 = """This is also a
multi-line string.""";

// Raw string
var s = r'In a raw string, not even \n gets special treatment.';

// Add String
var s1 = 'String '
    'concatenation'
    " works even over line breaks.";
'The + operator ' + 'works, as well.';
'Dart has $s'
'${s.toUpperCase()} is very handy!'
```

## LIST

### _Declare

```java
var list = [1, 2, 3];
list.length
list[1] = 1;    // Assign Item
if (list[1] == 2) {};

var constantList = const [1, 2, 3];
```

### _Get Item: list[1]

### Add Items

```java
// add all item from list to list2
var list2 = [0, ...?list];

// add with condition
var listOfStrings = [
  '#0',
  for (var i in list) '#$i'
];
print(listOfStrings[1] == '#1');    // true
```

### Set: list with unique items

```java
// Declare
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
var names = <String>{};
Set<String> names = {}; // This works, too.

// Add item
names.add('fluorine');
names.addAll(halogens);
```

### Maps: list with Keys & Values

```java
// Declare
// Map<String, String>
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

// Set value
gifts['first'] = 'partridge';
```

## CONDITIONAL

### _If

```java
if (condition()) {
  // do if true
} else if (condition2()) {
  // do if condition2 true
} else {
  // do if false
}
```

### _Switch

```java
var command = 'OPEN';
switch (command) {
    case 'CLOSED':
        executeClosed();
        break;
    case 'PENDING':
        executePending();
        break;

    case 'APPROVED':
    case 'APPROVED2':
    // Runs for both APPROVED and APPROVED2.
        executeApproved();
        break;

    case 'RUN1':
        executeRun1();
        continue run2; // Continues executing at the run2 label.

    run2:
    case 'RUN2':
    // // Runs for both RUN1 and RUN2.
        executeRun2();

    default:
        executeUnknown();
}
```

### _Assert: (Make sure the variable has a...)

```java
assert(myName == null);  // stop here if (myName == null)
```

## LOOP

### _For

```java
for (var i = 0; i < 5; i++) {
  print(i);
}

// in
for (var x in collection) {
  print(x); // 1 2 3
}

// foreach
collection.forEach((c) => c());
```

### _While

```java
while (!isDone()) {
  doSomething();
}

// do while
do {
  printLine();
} while (!atEndOfPage());
```

### _Break: stop the loop

```java
while (true) {
  if (shutDownRequested()) break;
  processIncomingRequests();
}
```

### _Continue: to the next loop

```java
for (int i = 0; i < candidates.length; i++) {
  var candidate = candidates[i];
  if (candidate.yearsExperience < 5) {
    continue;
  }
  candidate.interview();
}
```

## LABLE

```java
continue run2; // Continues executing at the run2 label

run2:   // where to jump
```

## METHOD/ FUNTION

### _Define Method

```java
bool isZero(int number) {
    return number == 0;
}

// shorthand function
bool isZero(int number) => number == 0;
```

### _Call Method

```java
var zero = isZero(0);   // true
```

### _Return method

```java
String say() {}

foo() {}    // null
```

### _Override

```java
@override say() {}
```

### _Passing Argument

```java
void enableFlags({bool bold, bool hidden}) {...}

// Default parameter
enableFlags(bold: true, hidden: false);

// Required parameter
const Scrollbar({Key key, @required Widget child})

// Optional (= null)
String say(String from, String msg, [String device]) { }
// device not set, default = null
```

### _Static

```java
static void bar() {} // A static method
```

### _Public/ Private/ Protected (do not have)

### Anonymous functions

```java
([[Type] param1[, …]]) {
  codeBlock;
};

// Example
list.forEach((item) {
    print('${list.indexOf(item)}: $item');
});
```

### Functions Scrope

```java
void main() {
  void myFunction() {
    void nestedFunction() {
      ...
    }
  }
}
```

## EXCEPTION

```java
throw FormatException('Expected at least 1 section');
throw FormatException('Expected at least 1 section');
void distanceTo(Point other) => throw UnimplementedError();
```

### Try - catch

```java
try {
  breedMoreLlamas();
} on OutOfLlamasException {
  // A specific exception
  buyMoreLlamas();
} on Exception catch (e) {
  // Anything else that is an exception
  print('Unknown exception: $e');
} catch (e, s)  {
  // No specified type, handles all
  print('Exception details:\n $e');
  print('Stack trace:\n $s');

  rethrow; // Allow callers to see the exception.
}
```

### Finally

```java
try {
  breedMoreLlamas();
} catch (e) {
  print('Error: $e'); // Handle the exception first.
} finally {
  cleanLlamaStalls(); // Then clean up.
}
```

## CLASS

### Constructor

```java
class Point {
  double x, y;

  Point(double x, double y) {
    // There's a better way to do this, stay tuned.
    this.x = x;
    this.y = y;
  }
}
```

#### Using Constructor

```java
var p1 = Point(2, 2);
// or
var p2 = new Point.fromJson({'x': 1, 'y': 2});
// constance
var p = const ImmutablePoint(2, 2);
```

### Using class member

```java
var p = Point(2, 2);
// Set the value of the instance variable y.
p.y = 3;
// If p is non-null, set its y value to 4.
p?.y = 4;
```

### create instance: call

```java
class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

var wf = WannabeFunction();
var out = wf('Hi', 'there,', 'gang');

main() => print(out);
```

### _This

```java
class Point {
  double x, y;

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point(this.x, this.y);

  // Named constructor: default constructor (can not inherit)
  Point.origin() {
    x = 0;
    y = 0;
  }
}
```

### Extend

```java
class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
    // override
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

main() {
  var emp = new Employee.fromJson({});

  // Prints:
  // in Person
  // in Employee
  if (emp is Person) {
    // Type check
    emp.firstName = 'Bob';
  }
  (emp as Person).firstName = 'Bob';
}
```

### Final method: not allow override

```java
class ImmutablePoint {
  static final ImmutablePoint origin =
      const ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}
```

### Method operator

- Operator override:

```
<	  +	  |	  []
>	  /	  ^	  []=
<=	~/	&	  ~
>=	*	  <<	==
–	  %	  >>
```

```java
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  // Operator == and hashCode not shown.
  // ···
}

// Using
final v = Vector(2, 3);
final w = Vector(2, 2);
// meaning
// v+w = Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
```

### Getters and setters

```java
class Rectangle {
  double left, top, width, height;

  // Constructor
  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and left.
  double get right => left + width;
  set right(double value) => left = value - width;
}

// Using:
var rect = Rectangle(3, 4, 20, 15);
rect.right = 12;
```

### Abstract Class + Abstract method (extends)

```java
abstract class Doer {
  // Define instance variables and methods...

  void doSomething(); // Define an abstract method.
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
  }
}
```

### multiple class hierarchies (mixin)

```java
class Musician {
  // ...
}
mixin MusicalPerformer on Musician {
  // ...
}
class SingerDancer extends Musician with MusicalPerformer, Aggressive {
  // ...
}
```

### Interfaces (implements)

```java
// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}
```

### Static variable, method

```java
class Queue {
  static const initialCapacity = 16;

  static double distanceBetween(int a, int b) {...}
}

// Using
Queue.initialCapacity
Queue.distanceBetween(1, 2)
```

## PACKAGE/ NAMESPACE

## IMPORT

```java
import 'dart:html';
//or
import 'package:test/test.dart';
//or
import 'package:lib2/lib2.dart' as lib2;
// Using
lib2.Element();
```

### Import a part

```java
// Import only foo.
import 'package:lib1/lib1.dart' show foo;

// Import all names EXCEPT foo.
import 'package:lib2/lib2.dart' hide foo;
```

### Import lazily

- To reduce a web app’s initial startup time.

```java
import 'package:greetings/hello.dart' deferred as hello;

// using funtion
Future greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}
```

## IMPRESSION

### async - await: result of a completed Future

```java
// await funtion
await lookUpVersion();

// call funtion
Future checkVersion() async {
  try {
    var version = await lookUpVersion();
    // Do something with version
  } catch (e) {
    // React to inability to look up the version
  }
}

// For await List
await for (varOrType identifier in expression) {
  // Executes each time the stream emits a value.
}

// Yield: tạo ra 1 chuỗi giá trị
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

// Yield trong đệ quy
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}
```

### typedef: type defination

```java
typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;

void main() {
  assert(sort is Compare<int>); // True!
}
```

---

## Reference

- <https://dart.dev/guides/language/language-tour>
