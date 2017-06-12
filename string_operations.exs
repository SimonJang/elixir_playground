# String operations
## Safer to use ` "string" ` to avoid errors
## Most String operations are in linear time

IO.puts "Printing the byte size of a string"
IO.puts byte_size("é")

IO.puts "Printing the string size of a string"
IO.puts String.length("é")

## Writing a function that does a String operation

take_prefix = fn full, prefix ->
	base = String.length(prefix)
	String.slice(full, base.. -1)
end

IO.puts take_prefix.("Mr. John", "Mr. ")

## Using patterns

IO.puts String.split("foo bar", " ")

IO.puts String.trim_leading("       Alot of trailing spaces")

