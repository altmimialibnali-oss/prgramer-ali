//If-Else
int hours = 45;

if (hours > 50) {
print("Excellent");
} else if (hours > 40) {
print("Good");
} else {
print("Average");
}
//Switch
String type = "pdf";

switch (type) {
case "pdf":
print("PDF Reader");
break;
}
//Enum
enum OrderState { pending, done }

String text = switch (OrderState.pending) {
OrderState.pending => "قيد الانتظار",
OrderState.done => "تم"
};
// loop
for (var price in [10, 20]) {
print(price * 1.15);
}
import 'dart:math';

int secret = 5;
int guess = 0;

while (guess != secret) {
guess = Random().nextInt(10);
}
String pass;
do {
pass = "123456789";
} while (pass.length <= 8);