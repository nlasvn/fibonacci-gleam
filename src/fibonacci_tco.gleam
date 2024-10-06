import gleam/int
import gleam/io

pub fn fib(num: Int) -> Int {
  rec_fib(num, 0, 1)
}

fn rec_fib(num: Int, sum: Int, prev: Int) -> Int {
  case num {
    num if num < 1 -> sum
    _ -> rec_fib(num - 1, prev + sum, sum)
  }
}

pub fn main() -> Nil {
  let num = 10
  io.println(
    "Fib of " <> int.to_string(num) <> " is: " <> int.to_string(fib(num)),
  )
}
