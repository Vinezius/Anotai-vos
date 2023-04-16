class Item {
  int id;
  String todoText;
  bool check;

  Item({
    required this.id,
    required this.todoText,
    this.check = false,
  });

  static List<Item> itemList() {
    return [
      Item(id: 1, todoText: 'Morning Exercise'),

    ];
  }
}