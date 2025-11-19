// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String id;
    String name;
    String brand;
    int price;
    int rating;
    String description;
    String thumbnail;
    String category;
    DateTime createdAt;
    bool isFeatured;
    int? userId;

    ProductEntry({
        required this.id,
        required this.name,
        required this.brand,
        required this.price,
        required this.rating,
        required this.description,
        required this.thumbnail,
        required this.category,
        required this.createdAt,
        required this.isFeatured,
        required this.userId,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        name: json["name"],
        brand: json["brand"],
        price: json["price"],
        rating: json["rating"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        category: json["category"],
        createdAt: DateTime.parse(json["created_at"]),
        isFeatured: json["is_featured"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "brand": brand,
        "price": price,
        "rating": rating,
        "description": description,
        "thumbnail": thumbnail,
        "category": category,
        "created_at": createdAt.toIso8601String(),
        "is_featured": isFeatured,
        "user_id": userId,
    };
}
