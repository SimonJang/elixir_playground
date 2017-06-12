# Struct example
# language specific syntax

user = %{name: 'Simon'}
## IO.put %{name: 'John'} Doesn't work on structs
IO.puts user.name

# user.name is static structure and will throw exception on error
# user[:name] is dynamic structure and will return nill on undefined/null
