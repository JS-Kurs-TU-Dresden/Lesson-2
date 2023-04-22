#import "./theme.typ": *

// --- Colors ---
#let jsYellow = rgb("f7df1e")
#let jsBlack = rgb("#222")
#let jsWhite = rgb("#ffffff")
#let subdued = jsWhite.darken(40%)


#set page(
    fill: jsBlack,
)

#set text(
    font: "Montserrat",
    fill: jsWhite,
)

#show: slides.with(
    author: "Nils Twelker",
    title: "Introcution to JavaScript",
    short-title: "JavaScript Lesson 2",
    date: "March 2023",
    color: jsYellow,
)

#show raw: it => [
    #box(it, fill: jsBlack.lighten(10%), outset: (x: 4pt, y:6pt), radius: 5pt)
]

#let hint = (it, full: false) => [
    #if full [
        #block([#text("tipp", fill: jsBlack)], fill: jsYellow.lighten(10%), outset: (x: 8pt, y:8pt), radius: (top:5pt))
        #v(-14pt)
        #block(it, fill: jsBlack.lighten(10%), outset: (x: 8pt, y:8pt), radius: (bottom: 5pt, top-right: 5pt))
    ] else [
        #text([Tipp: ], fill: jsYellow.lighten(10%))
        #it
    ]
]

== Discord

https://discord.gg/W3QJrBwD6Z

#align(center, [
    #image("./qrcode3.png", width: 200pt)
])


== What learned we last Week?

- Variables #raw("let x = 1", lang: "js")
- Data Types `number`, `string`, `boolean`, `null`, `undefined`
- Conversion between data types `Number()`, `String()`, `Boolean()`
- Operators `+`, `-`, `*`, `/`, `%`
- Debugging with #raw("console.log()", lang: "js")
- Comments `//` and `/* */`
- Testing with `npm run test [name]`

#hint("Dont forget to commit and push your changes")

== Goals of this week

- Comparing values
- Conditional Statements
- Loops
- Logical Operators

== Loose Comparison

```js
1 == 1 // true
1 == 2 // false

1 != 1 // false
1 != 2 // true

1 < 2 // true
1 > 2 // false

const isEqual = 11 == 10 // isEqual = false
```

When comparing two values of different types, JavaScript will try to convert one type into the other type. 

 ```js
1 == "1" // true
0 == false // true

"false" != true // false
1 != true // false
```

== Strict Comparison

```js
1 === 1 // true
1 === 2 // false

1 !== 1 // false
1 !== 2 // true

1 < 2 // true
1 > 2 // false

const isEqual = 11 === 10 // isEqual = false
```

#hint("Use strict comparison whenever possible")

== Conditional Statements

```js
if (condition) {
    // do something
} else if (condition) {
    // do something else
} else {
    // do something else
}
```
=== Example

```js
const x = 1
if (x === 1) {
    console.log("x is 1")
} else if (x === 2) {
    console.log("x is 2")
} else {
    console.log("x is not 1 or 2")
}
```

== Logical Operators

```js
&& // and
|| // or
! // not
```

=== Example

```js
const x = 1
const y = 2
if (x === 1 && y === 2) {
    console.log("x is 1 and y is 2")
}

if (x === 1 || y === 2) {
    console.log("x is 1 or y is 2")
}

if (!(x === 1)) {
    console.log("x is not 1")
}
```

== Loops

```js
while (condition) {
    // do something
}

do {
    // do something
} while (condition)

for (let i = 0; i < 10; i++) {
    // do something
}
```

=== Example

```js
let i = 0
while (i < 10) {
    console.log(i)
    i++
}

for (let i = 0; i < 10; i++) {
    console.log(i)
}
```

== Exercise

Link will be posted on Discord