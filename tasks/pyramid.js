import { prompt } from "../prompt.js"

// draw a pyramid of a given height to the console
//
// Example output:
//    #
//   ###
//  #####
// #######

const height = Number(prompt("How tall should the pyramid be? "))

for (let i = 0; i < height; i++) {
    console.log(" ".repeat(height - i - 1) + "#".repeat(i * 2 + 1))
}