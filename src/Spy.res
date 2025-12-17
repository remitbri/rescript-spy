let arrayOfOneUnit = [()]

let make = func => {
  let calls = []
  let func = () => {
    let _ = calls->Array.pushMany(arrayOfOneUnit)
    func()
  }
  (func, calls)
}

let make1 = func => {
  let calls = []
  let func = a => {
    let _ = calls->Array.push(a)
    func(a)
  }
  (func, calls)
}

let make2 = func => {
  let calls = []
  let func = (a, b) => {
    let _ = calls->Array.push((a, b))
    func(a, b)
  }
  (func, calls)
}

let make3 = func => {
  let calls = []
  let func = (a, b, c) => {
    let _ = calls->Array.push((a, b, c))
    func(a, b, c)
  }
  (func, calls)
}

let make4 = func => {
  let calls = []
  let func = (a, b, c, d) => {
    let _ = calls->Array.push((a, b, c, d))
    func(a, b, c, d)
  }
  (func, calls)
}

let make5 = func => {
  let calls = []
  let func = (a, b, c, d, e) => {
    let _ = calls->Array.push((a, b, c, d, e))
    func(a, b, c, d, e)
  }
  (func, calls)
}

@set external clear: (array<'a>, @as(0) _) => unit = "length"
