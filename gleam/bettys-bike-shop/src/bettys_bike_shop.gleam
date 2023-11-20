// TODO: import the `gleam/int` module
// TODO: import the `gleam/float` module
// TODO: import the `gleam/string` module
import gleam/int.{to_float}
import gleam/float.{to_string}
//import gleam/string

pub fn pence_to_pounds(pence) -> Float {
  to_float(pence) /. 100.0
}

pub fn pounds_to_string(pounds : Float) {
  "£" <> to_string(pounds)
}
