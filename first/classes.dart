class Car {
  final String model;
  final String color;
  final double maxSpeed;
  final int numberOfSeats;

  const Car({
    required this.model,
    required this.color,
    required this.maxSpeed,
    required this.numberOfSeats,
  });
}

void main() {
  var toyota = const Car(
    model: 'Toyota',
    color: 'red',
    maxSpeed: 150.0,
    numberOfSeats: 4,
  );

  var benz = const Car(
    model: 'Mercedes',
    color: 'blue',
    maxSpeed: 200,
    numberOfSeats: 2,
  );

  var ford = const Car(
    model: 'Ford',
    color: 'black',
    maxSpeed: 250,
    numberOfSeats: 2,
  );
}
