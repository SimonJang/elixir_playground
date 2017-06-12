## Dependencies bundled in module
### Printing value in console
### Executing lower level
### Using `case` control structure, checking value with 10

defmodule TestApp.BT do
	def simplePrintFunction(key) do
		IO.puts "Printing value for '#{key}'"
	end
	def executingLowerLevelFunction(func) do
		func.()
	end
	def waterfallCase(key) do
		case 10 do
			^key -> IO.puts "Matching #{key} with 10"
			key when key > 5 -> "Not matching 10 but #{key} is greater then 10"
			_ -> IO.puts "Not matching with #{key} and using `_` as catchall"
		end
	end
end

# Function for string concat

## Reference in documentation is print/1
## `Function name`/`Amount of arguments`
print = fn key1, key2 ->
	IO.puts key1 <> " " <> key2
end

print.("Playing around", " with Elexir")

division = fn top, bottom ->
	IO.puts top / bottom
	IO.puts div(top, bottom)
	IO.puts rem(top, bottom) ## Module
end

division.(4, 2)

## Using fn and end declares an anonymous function
## When using an anonymous function, you need to include `.`
## This to make sure that there is a difference between anonyous function
## and defined function

TestApp.BT.simplePrintFunction("Testing non-anonymous function")

## function in an argument of a higher level function

someFunction = fn ->
	IO.puts "Executing context of function"
end

TestApp.BT.executingLowerLevelFunction(someFunction)

TestApp.BT.waterfallCase(3)
TestApp.BT.waterfallCase(6)
# TestApp.BT.waterfallCase(10)

