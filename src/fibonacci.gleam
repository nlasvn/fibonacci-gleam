import gleam/int
import gleam/io

pub fn fib(num: Int) -> Int {
  case num {
    num if num <= 1 -> num
    _ -> fib(num - 1) + fib(num - 2)
  }
}

pub fn main() -> Nil {
  let num = 10
  io.println(
    "Fib of " <> int.to_string(num) <> " is: " <> int.to_string(fib(num)),
  )
}
