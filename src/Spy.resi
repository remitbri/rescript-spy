let make: (unit => 'a) => (unit => 'a, array<unit>)

let make1: ('a => 'b) => ('a => 'b, array<'a>)

let make2: (('a, 'b) => 'c) => (('a, 'b) => 'c, array<('a, 'b)>)

let make3: (('a, 'b, 'c) => 'd) => (('a, 'b, 'c) => 'd, array<('a, 'b, 'c)>)

let make4: (('a, 'b, 'c, 'd) => 'e) => (('a, 'b, 'c, 'd) => 'e, array<('a, 'b, 'c, 'd)>)

let make5: (('a, 'b, 'c, 'd, 'e) => 'f) => (('a, 'b, 'c, 'd, 'e) => 'f, array<('a, 'b, 'c, 'd, 'e)>)

@set external clear: (array<'a>, @as(0) _) => unit = "length"
