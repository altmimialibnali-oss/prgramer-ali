import 'dart:isolate';

int fib(int n) => n <= 1 ? n : fib(n - 1) + fib(n - 2);

void main() async {
  var result = await Isolate.run(() => fib(40));
  print(result);
}