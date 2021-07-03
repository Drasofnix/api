class Locations {
  String? name;
  String? climate;
  String? terrain;
  String? surface_water;
  
  Locations({
    this.name,
    this.climate,
    this.terrain,
    this.surface_water,
  });

  factory Locations.fromMapJson(Map<String, dynamic> data) => Locations(
    name: data['name'],
    climate: data['climate'],
    terrain: data['terrain'],
    surface_water: data['surface_water'],
  );
}