typedef Handler = void Function(Map data);
class Box<T> {
  T value;
  Box(this.value);
}