class Vehicles {
  String? name;
  String? description;
  String? vehicle_class;
  int? lenght;
  String? pilot;
  
  Vehicles({
    this.name,
    this.description,
    this.vehicle_class,
    this.lenght,
    this.pilot,
  });

  factory Vehicles.fromMapJson(Map<String, dynamic> data) => Vehicles(
    name: data['name'],
    description: data['description'],
    vehicle_class: data['vehicle_class'],
    lenght: data['lenght'],
    pilot: data['pilot'],
  );
}