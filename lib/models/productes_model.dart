class ProductesModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;
  final dynamic price;
  final RatingModel rating;

  ProductesModel(
      {required this.id,
      required this.rating,
      required this.price,
      required this.title,
      required this.description,
      required this.category,
      required this.image});
  factory ProductesModel.fromJson(jsonData) {
    return ProductesModel(
        id: jsonData['id'],
        title: jsonData['title'],
        description: jsonData['description'],
        category: jsonData['category'],
        image: jsonData['image'],
        price: jsonData['price'],
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  final dynamic rate;
  final dynamic count;

  RatingModel({required this.count, required this.rate});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
