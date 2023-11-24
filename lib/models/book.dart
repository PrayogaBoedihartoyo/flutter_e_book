class BookList {
  String imageUrl;
  String writers;
  String title;

  BookList({
    required this.imageUrl,
    required this.writers,
    required this.title,
  });
}

List<BookList> bookLists = [
  BookList(
      imageUrl: 'assets/images/dear_nathan.jpg',
      writers: 'Justin Lin',
      title: 'Dear Nathan'),
  BookList(
      imageUrl: 'assets/images/balerina.jpg',
      writers: 'Paul W.S. Anderson',
      title: 'Balerina'),
  BookList(
      imageUrl: 'assets/images/central_intelegence.jpg',
      writers: 'James Wan',
      title: 'Central Inteligence'),
];
