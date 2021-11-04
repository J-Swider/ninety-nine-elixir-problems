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

# Problem 04 - Find the number of elements of a list.

    def length(list), do: _length(list, 0)
    defp _length([], res), do: res
    defp _length([ _ | tail ], res), do: _length(tail, res + 1)

# Problem 05 - Reverse a list.

    def rev(list), do: _rev(list, [])
    defp _rev([], res), do: res
    defp _rev([ head | tail ], res), do: _rev(tail, [head] ++ res)

# Problem 06 - Find out whether a list is a palindrome.

    def is_palindrome(list) do
        if list == rev(list) do
            true
        else
            false
        end
    end

# Problem 07 - Flatten a nested list structure.

    def flatten(list), do: _flatten(list, []) |> P0.rev()
    defp _flatten([], res), do: res
    defp _flatten([ head | tail ], res) when is_list(head) do
        res = _flatten(head, res)
        _flatten(tail, res)
    end
    defp _flatten([ head | tail ], res), do: _flatten(tail, [head] ++ res)

end