class Figure {
  num left, top, width, height;

  Figure(this.left, this.top, this.width, this.height);

  // getters
  num get right => left + width;
  num get bottom => top - height;
  
  // setters
  set right(num value) => left = value - width;
  set bottom(num value) => top = value + height;
}

void main() {
  var fig = Figure(3, 4, 20, 15);
  print(fig.left);
  print(fig.right);
  fig.right = 12;
  print(fig.left);
}