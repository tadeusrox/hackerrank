//Write MyBook class
class MyBook: Book {
  protected:
      int price;
  public:
      MyBook(string t, string a, int p) : Book(t, a) {
            price=p;
      }

  void display() {
    std::cout << "Title" << ": " << title << '\n';
    std::cout << "Author" << ": " << author << '\n';
    std::cout << "Price" << ": " << price << '\n';
  }
};
