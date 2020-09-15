class Task {
  String name;
  bool isChecked;

  Task({this.isChecked = false, this.name});

  void revertIsChecked() {
    isChecked = !isChecked;
  }
}
