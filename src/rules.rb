RULES = {
   "A" => ->(count) { (count / 3) * 130 + (count % 3) * 50 },
   "B" => ->(count) { (count / 2) * 45 + (count % 2) * 30 },
   "C" => ->(count) { count * 20 },
   "D" => ->(count) { count * 15}
}
