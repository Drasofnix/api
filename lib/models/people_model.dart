class People{
  String? name;
  String? gender;
  int? age;
  String? eye_color;
  String? hair_color;
  String? species;

  People({
    this.name,
    this.gender,
    this.age,
    this.eye_color,
    this.hair_color,
    this.species,
  });

  factory People.fromMapJson(Map<String, dynamic> data) => People(
    name: data['name'],
    gender: data['gender'],
    age: data['age'],
    eye_color: data['eye_color'],
    hair_color: data['hair_color'],
    species: data['species'],
  );
}