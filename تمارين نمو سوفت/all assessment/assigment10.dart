String? name = null;
// String name2 = null; ❌ خطأ
List<int>? a;
List<int> b = [1, 2, ...?a];
String? username;
print(username ?? "Guest");
print(username?.length);
String value = username!;