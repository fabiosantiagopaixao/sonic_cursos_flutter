class Car {
  int index;
  String name;
  String brand;

  Car({this.index, this.name, this.brand});

  static List<Car> getCars(){
    List<Car> cars = [];

    for(int i = 1; i < 21; i++){
      Car car = Car(index: i, name: "Carro ${i}", brand: "Marca ${i}");
      cars.add(car);
    }
    return cars;
  }
}