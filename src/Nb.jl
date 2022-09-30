### A Nbdev script file ###
### Autogenerated file. Don't modify. ###

module Nb

export Code
export Mk
export Cell
export Notebook

#export
"""
> struct Code--> contains a code cell from a notebook (julia file)
> * Fields:
>   * code--> code item
>   * isexport--> if code cell is to be exported
>   * ishide--> if code cell is to be hidden
>   * isnoop--> if code cell is supposed to be having no output
>   * isnoanchor--> if code cell is not having any anchor
"""
struct Code
	code::String
	isexport::Bool
	ishide::Bool
	isnoop::Bool
	isnoanchor::Bool	
end

#export
"""
> struct Mk--> contains a markdown cell from a notebook (julia file)
> * Fields:
>   * mk--> markdown item
"""
struct Mk
	mk::String
end

#export
"""
> struct cell--> contains a cell from a notebook (julia file)
> * Fields:
>   * cell--> String which makes up a cell
"""
mutable struct Cell
	cell
	end

#export
"""
> struct Notebook--> Collection of cells.
> * Fields:
>   * cells--> Array of cells
>   * name--> name of notebook
"""
mutable struct Notebook
	cells::Array{Cell,1}
	name::AbstractString
end

#export
begin
	export Code
	export Mk
	export Cell
	export Notebook
end

end