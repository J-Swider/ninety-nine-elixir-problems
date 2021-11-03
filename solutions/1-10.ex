# Problems 01 - 10

defmodule P0 do

# Problem 01

    def last([]), do: nil
    def last([a]), do: a
    def last([ _ | tail ]), do: last(tail)

# Problem 02

    def last_two([]), do: nil
    def last_two([_]), do: nil
    def last_two([a, b]), do: [a, b]
    def last_two( [ _ | tail ] ), do: last_two(tail)

end