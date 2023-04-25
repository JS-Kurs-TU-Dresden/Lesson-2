import { prompt } from '../prompt.js'

// Implement a basic calculator that can add, subtract, multiply and divide two numbers.
// The calculator should ask the user to enter the two numbers and the operation to perform.
// The calculator should then output the result of the operation.

// Example output:
// Enter the first number: 5
// Enter the second number: 3
// Enter the operation to perform: add, sub, mul, div: add
// 8

const firstNumber = prompt("Enter the first number: ")
const secondNumber = prompt("Enter the second number: ")

const operation = prompt("Enter the operation to perform: add, sub, mul, div: ")

if (operation === "add") {
    console.log(Number(firstNumber) + Number(secondNumber))
} else if (operation === "sub") {
    console.log(Number(firstNumber) - Number(secondNumber))
} else if (operation === "mul") {
    console.log(Number(firstNumber) * Number(secondNumber))
} else if (operation === "div") {
    console.log(Number(firstNumber) / Number(secondNumber))
} else {
    console.log("Unknown operation")
}