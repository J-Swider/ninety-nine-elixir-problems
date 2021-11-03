# Problems 01 - 10

defmodule P0 do

# Problem 01 - Write a function last : 'a list -> 'a option that returns the last element of a list.

    def last([]), do: nil
    def last([a]), do: a
    def last([ _ | tail ]), do: last(tail)

# Problem 02 - Find the last but one (last and penultimate) elements of a list.

    def last_two([]), do: nil
    def last_two([_]), do: nil
    def last_two([a, b]), do: [a, b]
    def last_two( [ _ | tail ] ), do: last_two(tail)

# Problem 03 - Find the K'th element of a list.

    def at(_, []), do: nil
    def at(1, [ head | _ ]), do: head
    def at(i, [ _ | tail ]), do: at(i - 1, tail)

end