import 'dart:io';

///Class Rectangle
class Rectangle {
  double length;
  double breadth;

  Rectangle({required this.length, required this.breadth});

  ///calculates area of rectangle
  areaOfRectangle() {
    print("Enter length of the rectangle: ");
    int? length = int.parse(stdin.readLineSync()!);
    print("Enter breadth of the rectangle: ");
    int? breadth = int.parse(stdin.readLineSync()!);
    int area = length * breadth;
    print("Area of Rectangle is: $area.");
  }

  ///calculates perimeter of rectangle
  perimeterOfRectangle() {
    double perimeter = 2 * (length + breadth);
    print("Perimeter of Rectangle is: $perimeter.");
  }
}

void main() {
  var rectangle = Rectangle(length: 5, breadth: 5);

//calling functions
  rectangle.areaOfRectangle();
  rectangle.perimeterOfRectangle();
}
