
class Person {
  String? gender;
  int? id;
  String? image;
  String? name;
  String? species;
  String? status;
  String? type;

  Person(
      {this.gender,
      this.id,
      this.image,
      this.name,
      this.species,
      this.status,
      this.type});

  Person.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    species = json['species'];
    status = json['status'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    data['id'] = this.id;
    data['image'] = this.image;
    data['name'] = this.name;
    data['species'] = this.species;
    data['status'] = this.status;
    data['type'] = this.type;
    return data;
  }
}