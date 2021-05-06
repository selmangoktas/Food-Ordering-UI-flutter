class foodModel {
  String id;
  String name;
  String image;
  String description;
  String price;
  String calori;
  String score;
  String like;

  foodModel(
      {this.id,
      this.name,
      this.image,
      this.description,
      this.price,
      this.calori,
      this.score,
      this.like});

  foodModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    calori = json['calori'];
    score = json['score'];
    like = json['like'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['description'] = description;
    data['price'] = price;
    data['calori'] = calori;
    data['score'] = score;
    data['like'] = like;
    return data;
  }
}