## Dependencies

# Functions and modules

defmodule TestApp.GreetingModule do
	def world(name) do
		IO.puts "Hello #{name}"
	end
end

TestApp.GreetingModule.world(:simon)

## Changing function based on key
## Testing data structures in Elixir

defmodule TestApp.DSTest do
	def checkIfPresent(key) do
		words = [a: "Alfa", b: "Beta"]
		IO.puts "You've selected #{words[key]}"
	end
end

TestApp.DSTest.checkIfPresent(:a)

## Changing state in application should not be possible

defmodule TestApp.ImmutableState do
	def newState(%{data: data}) do
		get_and_update_in(%{data: data}, Access.all(), :data,
		fn
			data -> IO.puts data
		end
		)
	end
end

someMap = %{data: "Some data"}
TestApp.ImmutableState.newState(someMap)
