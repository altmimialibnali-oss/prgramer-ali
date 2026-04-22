double p1 = 40, p2 = 30, p3 = 50;
double total = p1 + p2 + p3;

if (total > 100) {
total += total * 0.15;
} else {
total += 5;
}
print(total);
bool isAdult = true;
bool hasSub = false;
bool isAdmin = true;

bool access = (isAdult && hasSub) || isAdmin;
int num = 14;

bool result = (num % 2 == 0) && (num % 7 == 0);
String a = "Hello";
String b = "hello";

bool equal = a.toLowerCase() == b.toLowerCase();