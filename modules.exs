# depedencies

require Access
require Kernel
require Kernel
require IO
require String
require StringIO

# ACCESS BEHAVIOUR #

## With keywords ##
keywords = [a: 'Printing from keywords data structure', b: 2]
IO.puts keywords[:a]

## With map ##

map = %{a: 'Printing from map data structure', b: 2}
IO.puts map[:a]

## With custom data structure ##
### Using integer values ###

rating = %{1 => 'Using custom data structure', 2 => 'Another example of using custom data structure'}
IO.puts rating[1]
IO.puts rating[2]

## Putting data in data structure ##

map = %{a: 1, b: 2}
# put_in map[:a], 3

## Access specific functions

list = [
	%{name: "Simon", lastName: "Jang"},
	%{name: "Lucas", lastName: "Jang"}
]

IO.puts get_in(list, [Access.all(), :name])

## Writing function
## Currently not functioning

get_and_update_in(list, [Access.all(), :name],
fn
	prev -> {prev, String.upcase(prev)}
end
)

IO.puts get_in(list, [Access.all(), :name])
