class PostModel {
  int? id;
  String? name;
  String? location;
  String? description;
  int? likecount;
  bool? isliked;

  PostModel(
      {required this.id,
      required this.name,
      required this.location,
      required this.description,
      required this.likecount,
      required this.isliked});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    description = json['description'];
    likecount = json['likecount'];
    isliked = json['isliked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['location'] = location;
    data['description'] = description;
    data['likecount'] = likecount;
    data['isliked'] = isliked;
    return data;
  }
}
