Future<void> main() async {
  print("Hello hello");
  var stream = countStream(100);
  var sum = await sumStream(stream);
  print("Sum of stream: $sum");
}

Stream<int> countStream(int max) async* {
  for (int i=0; i<max; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for(int value in stream) {
    sum += value;
  }
  return sum;
}