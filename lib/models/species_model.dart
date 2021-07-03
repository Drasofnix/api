class Species {
  String? name;
  String? classification;
  String? eye_colors;
  String? hair_colors;
  
  Species({
    this.name,
    this.classification,
    this.eye_colors,
    this.hair_colors,
  });

  factory Species.fromMapJson(Map<String, dynamic> data) => Species(
    name: data['name'],
    classification: data['classification'],
    eye_colors: data['eye_colors'],
    hair_colors: data['hair_colors'],
  );
}