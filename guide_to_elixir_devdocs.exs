defmodule TestApp.Main do
	def print(string1, string2) do
		IO.puts string1 <> " " <> string2
	end
	def simplePrintFunction(key) do
		IO.puts "Printing value for #{key}"
	end
end
