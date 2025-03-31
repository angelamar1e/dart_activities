class DataTypes {
  String exampleString = 'This is Dart';
  int exampleInt = 4;
  double exampleDouble = 7.0;
  bool exampleBoolean = true;
  var exampleVar = 'hello'; // type inference from initialized value, if uninitialized, the data type becomes dynamic
  final exampleFinal = 'final type variable'; // set only once
  static const exampleConst = 3.14; // static variables belong to the class instead of a specific instance
  dynamic exampleDynamic; // initialization not required, data type can change as it is set
  late String exampleLate;

  void displayExamples() {
    setExamples();
    print("The following are examples of different data types:");
    print("String: $exampleString");
    print("int: $exampleInt");
    print("double: $exampleDouble");
    print("boolean: $exampleBoolean");
    print("var: $exampleVar");
    print("final: $exampleFinal");
    print("static const: $exampleConst");
    print("dynamic: $exampleDynamic");
    print("late: $exampleLate");
  }

  void setExamples() {
    exampleLate = 'L8';
    exampleDynamic = true;
  }
}
