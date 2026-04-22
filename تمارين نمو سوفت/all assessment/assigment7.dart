var record = ("Aden", 45.0, 12.0);
var (city, long, lat) = record;
var list = [1, 2, 3, 4, 5];
var [first, ..., last] = list;
Map data = {"status": "success", "data": "OK"};

switch (data) {
case {"status": "success", "data": var d}:
print(d);
case {"status": "failure"}:
print("Error");
}
var obj = [0, 5];

if (obj case [0, _]) {
print("Valid");
}