class CategoryData {
  int? id;
  String? categoryName;
  String? categoryImg;


  CategoryData(
      {this.id,
        this.categoryName,
        this.categoryImg,
});

  CategoryData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['categoryName'];
    categoryImg = json['categoryImg'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['categoryName'] = categoryName;
    data['categoryImg'] = categoryImg;

    return data;
  }
}