void main(List<String> arguments) {
  Shape s1 = Square(8);
  print("Square Area: ${s1.giveArea().toString()}");
  print("Square Pirim: ${s1.givePerimiter().toString()}");
  Rectangle r1 = Rectangle(10, 10);
  print("Rectangle Area: ${r1.giveArea().toString()}");
  print("Rectangle Pirim: ${r1.givePerimiter().toString()}");
}

abstract class Shape {
  int givePerimiter();
  int giveArea();
  void giveInfo() {
    print("This is a shape.");
  }
}

class Square extends Shape {
  int edge = 0;
  @override
  int giveArea() {
    return edge * edge;
  }

  Square(this.edge);
  @override
  int givePerimiter() {
    return 4 * (edge);
  }
}

class Rectangle extends Shape {
  int edge1;
  int edge2;
  Rectangle(this.edge1, this.edge2);
  @override
  int giveArea() {
    return edge1 * edge2;
  }

  @override
  int givePerimiter() {
    return 2 * (edge1 + edge2);
  }
}
