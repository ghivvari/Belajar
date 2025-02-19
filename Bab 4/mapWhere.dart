void main() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
    'wed': 4000.0,
    'thu': 3590.0,
    'fri': 2950.0,
  };
  expenses.removeWhere((key, value) => value > 3500);
  print(expenses);
}
