# Enum
## Enum provides a set of algorithms that enumerate over enumerables
## according to the Enumerable protocol

map = Enum.map([1,2,3], fn(x) ->
	x = x * 2
	IO.puts x
end)
