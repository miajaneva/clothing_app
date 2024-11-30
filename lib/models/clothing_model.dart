class Clothing {
  int id;
  String name;
  String img;

  Clothing({required this.id, required this.name, required this.img, required String description, required double price});

  Clothing.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        img = data['img'];

  get description => null;

  get price => null;
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': img};
}

