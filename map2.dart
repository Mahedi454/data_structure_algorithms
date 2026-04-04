
Map<String, dynamic> jsonData = {
  "title": "Flutter Map Example",
  "author": "Mahedi Hasan",
  "pages": 250,
  "price": 19.99,
};



Book book = Book(
  title: jsonData["title"],
  author: jsonData["author"],
  pages: jsonData["pages"],
  price: jsonData["price"],
);

class Book {
  String title;
  String author;
  int pages;
  double price;

  Book({
    required this.title,
    required this.author,
    required this.pages,
    required this.price,
  });
}