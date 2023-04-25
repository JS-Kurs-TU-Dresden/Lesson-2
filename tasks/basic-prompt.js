import { prompt } from '../prompt.js'

// Ask the user his name and age. Then output the following:
//
// Hello [name], in 2 years you will be [x] years old.

const name = prompt("What is your name? ")
const age = prompt("What is your age? ")

console.log("Hello " + name + ", in 2 years you will be " + (Number(age) + 2) + " years old.")