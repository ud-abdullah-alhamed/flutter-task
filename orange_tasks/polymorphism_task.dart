abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);

  print("Area of the circle: ${circle.calculateArea()}");
  print("Area of the rectangle: ${rectangle.calculateArea()}");
}
