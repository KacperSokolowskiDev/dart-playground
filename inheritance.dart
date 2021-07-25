class Product {
  // _variable, underscore means that a variable is private to this class alone
  // Beverage cannot inherit thoe instances but can inherite the method
  String? _name;
  num? _price;
  String? _expDate;

  Product(this._name, this._price, this._expDate);

  void printDetails() {
    print('Name: ${this._name}');
    print('Price: ${this._price}');
    print('Expiration date: ${this._expDate}');
  }
}

class Beverage extends Product {
  num? _liters;
  String? _type;

  Beverage(String name, num price, String expDate, this._liters, this._type)
      : super(name, price, expDate);

  void beverageDetails() {
    printDetails();
    print('Liters: ${this._liters}L');
    print('Type: ${this._type}');
  }
}

void main() {
  var drink = Beverage('Minute Maid', 2.60, '01/01/2022', 1.50, 'Apple juice');
  drink.beverageDetails();
}
