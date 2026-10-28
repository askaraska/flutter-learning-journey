String getGreeting(String name) {
  return 'Hello, $name! Welcome to Flutter.';
}

int addNumbers(int a, int b) {
  return a + b;
}

bool isEligibleForJob(int age) {
  return age >= 18;
}

void main() {
  String greeting = getGreeting('Sulthan');
  int result = addNumbers(10, 20);
  bool eligible = isEligibleForJob(29);

  print(greeting);
  print('Addition result: $result');
  print('Job eligible by age: $eligible');
}