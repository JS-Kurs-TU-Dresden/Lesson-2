// More information can be found here: https://javascript.info/while-for
// Fill in the gaps (___) to make the code work

// Should print 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
let a = 0;
while (a < 10) {
    console.log(a);
    a++;
}

// Should print 10, 8, 6, 4, 2, 0
console.log("New Loop:")
for (var b = 10; b >= 0; b -= 2) {
    console.log(b);
}

// Should print 1, 3, 5, 7, 9
console.log("New Loop:")
for (var c = 1; c < 10; c += 2) {
    console.log(c);
}

// Should print 11, 12, 13, 14, 15
console.log("New Loop:")
let d = 11;
while (true) {
    if (d > 15) {
        break;
    }
    console.log(d);
    d++;
}

// Should print 100, 99, 98, 97, 96, 95, 94, 93, 92, 91
console.log("New Loop:")
let e = 100;
do {
    console.log(e);
    e--;
} while (e >= 91);

// Should print 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, ... til 10
console.log("New Loop:")
for (var i = 1; i <= 10; i++) {
    for (var j = 0; j < i; j++) {
        console.log(i);
    }
}
