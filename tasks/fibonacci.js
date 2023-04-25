// Print the first 30 Fibonacci numbers

// The first two numbers in the Fibonacci sequence are 0 and 1.
// Every subsequent number is the sum of the previous two.

// Example output:
// 0
// 1
// 1
// 2
// 3
// 5
// 8
// 13
// 21

let a = 0
let b = 1

for (let i = 0; i < 30; i++) {
    console.log(a)
    let c = a + b
    a = b
    b = c
}