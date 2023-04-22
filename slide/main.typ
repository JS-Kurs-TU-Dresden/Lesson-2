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

#hint("Use strict comparison whenever possible")