import gleam/io
import gleam/int

// Please define the expected_minutes_in_oven function
pub fn expected_minutes_in_oven() -> Int {
  40
}

// Please define the remaining_minutes_in_oven function
pub fn remaining_minutes_in_oven(minutes_in_oven: Int) -> Int {
  expected_minutes_in_oven() - minutes_in_oven
}

// Please define the preparation_time_in_minutes function
pub fn preparation_time_in_minutes(layers: Int) -> Int {
  layers * 2
}

// Please define the total_time_in_minutes function
pub fn total_time_in_minutes(layers: Int, minutes_in_oven: Int) -> Int {
  preparation_time_in_minutes(layers) + minutes_in_oven
}

// Please define the alarm function
pub fn alarm() -> String {
  "Ding!"
}

pub fn main() {
  let layers = 20
  let minutes_in_oven = 30
  io.println(
    "Total time: " <> int.to_string(total_time_in_minutes(
      layers,
      minutes_in_oven,
    )) <> " minutes",
  )
  io.println("Lasagna has " <> int.to_string(layers) <> " layers.")
  io.println(
    "Preparation time: " <> int.to_string(preparation_time_in_minutes(layers)) <> " minutes",
  )
  io.println(
    "Bake for " <> int.to_string(remaining_minutes_in_oven(minutes_in_oven)) <> " minutes.",
  )
}
