// More information can be found here: https://javascript.info/while-for
// Fill in the gaps (___) to make the code work

// Should print 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
var i = 0;
while (i < 10) {
    console.log(i);
    i++;
}

// Should print 10, 8, 6, 4, 2, 0
for (var i = 10; i >= 0; i -= 2) {
    console.log(i);
}

// Should print 1, 3, 5, 7, 9
for (var i = 1; i < 10; i += 2) {
    console.log(i);
}

// Should print 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
while (true) {
    if (i >= 10) {
        break;
    }
    console.log(i);
    i++;
}

// Should print 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
do {
    console.log(i);
    i++;
} while (i < 10);

// Should print 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, ... til 10
for (var i = 1; i <= 10; i++) {
    for (var j = 0; j < i; j++) {
        console.log(i);
    }
}
