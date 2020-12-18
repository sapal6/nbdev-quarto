### A Pluto.jl notebook ###
# v0.11.13

using Markdown
using InteractiveUtils

# ╔═╡ 5b4e526e-3dfa-11eb-3472-bd753d60c119
#hide
include("../src/documenter.jl")

# ╔═╡ 0aecd4c0-0e14-11eb-1619-4f5e0ced1279
#export
import Pluto: Notebook, Cell, load_notebook_nobackup

# ╔═╡ d2a442c0-0eb2-11eb-1ea8-d507d9145823
#export
function processMdChunk(mdChunk::String)
	chopMdMarker(mdChunk)
end

# ╔═╡ 6ff1ad80-1479-11eb-3868-0df000f47cc9
md"""
## Deeper Level Types, Methods etc.

### Nucleus

The **Nucleus** type is the smallest entity of a notebook. It stores the code cells in string format. It is handy to store the code cells inside Nucleus so that later they can be filtered based on the *export marker* in that particular cell(more on it in upcoming sections).

```
Base.@kwdef mutable struct Nucleus
	code::String=""
	end
```
"""

# ╔═╡ a5bfff40-1620-11eb-2824-2d49985a022d
#export
begin
Base.@kwdef mutable struct Nucleus
	code::String=""
	end
	
Nucleus(code) = Nucleus(code = code)
end

# ╔═╡ d17ebf90-1486-11eb-0d41-b967a8ab82ba
#export
begin
mutable struct Nb
	nuclei::Array{Nucleus,1}
	name::AbstractString
end

nuclei(nuclei::Array) = nuclei
name(name::AbstractString) = name
end

# ╔═╡ ff27d270-1557-11eb-015e-e551820b5d08
md"This can later be used for struct inheritence"

# ╔═╡ 984a07b0-0eb5-11eb-14e8-7be4b6d05010
md"`collect_codecells` will dispatch on two things
1. If it's *#export* then parse the code as string adn give it back.
2. If it's *md* or nothing then parse the code as string and then pass it onto a different function.
   1. This new function shall execute the markdown and push it to string then it keeps on appending the same till it encounters a cell with no marker.
    2. At this point things start to get interesting. 
    3. Any cell which doesn't start with *#export*, *#hide*, *md* should be considered as examples.
    4. Such cells should be contaenated together into a single string and then executed and the output concatenated into the same string as earlier markdown.
    5. The actual code of such cells should be wrapped in backticks.

> One thing to note is that whenever there is an error, the doc build stops"

# ╔═╡ ee16fab0-155c-11eb-217a-a1ffcea885bc
md"the Nb type is the definitve type of notebook here. this can then be extended to create code only notebooks or document only notebooks."

# ╔═╡ 1941c9ce-1770-11eb-1371-e775bcb1d68a
md"Headers for the exported script file"

# ╔═╡ 296282f0-1770-11eb-0900-b37a94fbc69c
#export
begin
const _header = "### A Nbdev script file ###"
const _sub_header = "### Autogenerated file. Don't modify. ###"
end

# ╔═╡ 773b9da0-2fd4-11eb-1c65-a10ea8672725
#export
#This had to be done becasue having the cell iddelimeter as a constant gives an error during parsing the notebook
cell_id_delimiter=string("#"," ╔═╡ ")

# ╔═╡ 6bfde500-2fcb-11eb-2b73-7ddce97351d3
#export
const _cell_suffix = "\n\n"

# ╔═╡ 20c285d0-2fb4-11eb-1ef0-3b28829af7e8
#export
mutable struct ScrubbedNotebook
	cells::Array{String, 1}
end

# ╔═╡ d4daaac0-0eb2-11eb-1d4d-7763fcfc0ed2
#export
function collect_nuclei(notebook::ScrubbedNotebook, marker)
	notebook_cells=notebook.cells
	nuclei=[]
		
    for i in 1:length(notebook_cells)
    	raw_code=notebook_cells[i]
    	nucleus=Nucleus(raw_code)
    	
    	if startswith(raw_code, marker)
            push!(nuclei,nucleus)
        end
    	
    end
	 nuclei
end

# ╔═╡ 4d1217b0-2fcb-11eb-0e90-75867c5e4cb2
#export
begin
"""
	This is a modification of the Pluto.load_notebook methods
"""
function load_scrubbed_nb(io, path)::ScrubbedNotebook
    collected_cells = []
		
	# ignore first bits of file
    readuntil(io,cell_id_delimiter)

    last_read = ""
    while !eof(io)
        cell_id_str = String(readline(io))
        if cell_id_str == "Cell order:"
            break
        else
            code_raw = String(readuntil(io, cell_id_delimiter))
            # change Windows line endings to Linux
            code_normalised = replace(code_raw, "\r\n" => "\n")
            # remove the cell appendix
            code = code_normalised[1:prevind(code_normalised, end, length(_cell_suffix))]

            read_cell = code
            push!(collected_cells, read_cell)
        end
    end
		
	ScrubbedNotebook(collected_cells)
end
	
function load_scrubbed_nb(path::String)::ScrubbedNotebook
    local loaded
    open(path, "r") do io
        loaded = load_scrubbed_nb(io, path)
    end
    loaded
end
end

# ╔═╡ 0b0aaa7e-2fd5-11eb-3b82-9165d56b4f63
#export
begin
	
load_nb(filename::String, marker::String) = _load_nb(filename, marker)
	
function _load_nb(filename::String, marker::String)
		#notebook=load_notebook_nobackup(filename)
		scrubbedNotebook=load_scrubbed_nb(filename)
		collected_nuclei=nuclei(collect_nuclei(scrubbedNotebook, marker))
		
		#if marker=="md"
		#	notebook
		#else
		Nb(collected_nuclei, filename)
		#end
end

end

# ╔═╡ d13f9ca0-1758-11eb-143b-29bccf950cae
testnb= load_nb("01_export.jl", "#export")

# ╔═╡ e229a820-1777-11eb-37c5-c108ab5f7110
testnb.nuclei[1].code

# ╔═╡ 54f54160-176f-11eb-0317-3542cb72f89f
md"something to save files"

# ╔═╡ 35a01900-1771-11eb-01a7-39297caf95fd
k="01_export.jl"

# ╔═╡ 4c511e5e-1771-11eb-3c8e-5785e7399d70
#export
strip=(x::String,y) -> replace(x, y=>"")

# ╔═╡ 7b999f90-1775-11eb-031e-69d461ec4150
"module $(uppercasefirst(strip(strip(k, r"[0-9_]"), r".jl")))"

# ╔═╡ 76f97bd0-177b-11eb-2d78-77c72b2aef81
md"To export the required code, the following scenarios must be considered.

👉 Check if the file is in the src directory. If it's there then overwrite it. 


👉 If it's not there then create and then write."

# ╔═╡ 6069d790-176f-11eb-3020-41b450d430ad
#export
begin
	
function save_nb(io, notebook)
    println(io, _header)
    println(io, _sub_header)
    println(io, "")
    println(io, "module $(uppercasefirst(strip(strip(notebook.name, r"[0-9_]"), r".jl")))")
	for nucleus in notebook.nuclei
			println(io, nucleus.code*"\n")
    end
	#notebook
	print(io, "end")	
end

function save_nb(notebook::Nb, path::String)
	file_name=uppercasefirst(strip(notebook.name, r"[0-9_]"))
	open(joinpath(path, file_name), "w") do io
        save_nb(io, notebook)
    end
end
end

# ╔═╡ cdd23fa0-1776-11eb-2343-a570b848c87e
save_nb(testnb, "../testpath")

# ╔═╡ b9a15e60-0e13-11eb-199d-f50a49f5bc44
md"we will read files in the curren tpath whihc should be the /nbs folder in your project. Thie will host all your notebooks"

# ╔═╡ cdada98e-0e13-11eb-30aa-1777efffb181
#export
begin
function readfilenames()
	files=[]
	for file in readdir()
			if endswith(file, ".jl")
				push!(files,file)
			end
			#if getfile_extension(file)== ".jl"
			#	push!(files,file)
			#end
	end
	files
end

function readfilenames(dir::String)
	files=cd(readdir, dir)
	files
end
end

# ╔═╡ 9b436180-177c-11eb-1c9a-ffbac62c95df
readfilenames()

# ╔═╡ 0be54350-177c-11eb-285a-93dd4d45e40e
#export
function export_file(file::String, path::String, marker::String)
	notebook=load_nb(file, "#export")
	save_nb(notebook, path)
end

# ╔═╡ 41d65310-0e11-11eb-1a36-87dc9ac941fa
#export
function export_content(files::AbstractVector, path::String, marker::String)
	map(file->export_file(file, path, marker), files)
end

# ╔═╡ 01608690-0e14-11eb-3faa-9b960f57f3fe
#export
function getfile_extension(filename)
    return filename[findlast(isequal('.'),filename):end]
end

# ╔═╡ 06649ce0-177d-11eb-2092-d7160725252a
 getfile_extension("test.jl")

# ╔═╡ b34f9d82-0ede-11eb-0f08-afa0cc898e80
#export
function notebook2script()
	export_content(readfilenames(), "../src", "#export")
end

# ╔═╡ baf3f1d0-0ede-11eb-2c02-1f53ed1a6cd7
notebook2script()

# ╔═╡ Cell order:
# ╠═5b4e526e-3dfa-11eb-3472-bd753d60c119
# ╠═0aecd4c0-0e14-11eb-1619-4f5e0ced1279
# ╠═d2a442c0-0eb2-11eb-1ea8-d507d9145823
# ╠═6ff1ad80-1479-11eb-3868-0df000f47cc9
# ╠═a5bfff40-1620-11eb-2824-2d49985a022d
# ╠═d17ebf90-1486-11eb-0d41-b967a8ab82ba
# ╟─ff27d270-1557-11eb-015e-e551820b5d08
# ╟─984a07b0-0eb5-11eb-14e8-7be4b6d05010
# ╟─ee16fab0-155c-11eb-217a-a1ffcea885bc
# ╟─1941c9ce-1770-11eb-1371-e775bcb1d68a
# ╠═296282f0-1770-11eb-0900-b37a94fbc69c
# ╠═d4daaac0-0eb2-11eb-1d4d-7763fcfc0ed2
# ╠═773b9da0-2fd4-11eb-1c65-a10ea8672725
# ╠═6bfde500-2fcb-11eb-2b73-7ddce97351d3
# ╠═4d1217b0-2fcb-11eb-0e90-75867c5e4cb2
# ╠═0b0aaa7e-2fd5-11eb-3b82-9165d56b4f63
# ╠═20c285d0-2fb4-11eb-1ef0-3b28829af7e8
# ╠═d13f9ca0-1758-11eb-143b-29bccf950cae
# ╠═e229a820-1777-11eb-37c5-c108ab5f7110
# ╟─54f54160-176f-11eb-0317-3542cb72f89f
# ╠═35a01900-1771-11eb-01a7-39297caf95fd
# ╠═4c511e5e-1771-11eb-3c8e-5785e7399d70
# ╠═7b999f90-1775-11eb-031e-69d461ec4150
# ╟─76f97bd0-177b-11eb-2d78-77c72b2aef81
# ╠═6069d790-176f-11eb-3020-41b450d430ad
# ╠═cdd23fa0-1776-11eb-2343-a570b848c87e
# ╟─b9a15e60-0e13-11eb-199d-f50a49f5bc44
# ╠═cdada98e-0e13-11eb-30aa-1777efffb181
# ╠═9b436180-177c-11eb-1c9a-ffbac62c95df
# ╠═0be54350-177c-11eb-285a-93dd4d45e40e
# ╠═41d65310-0e11-11eb-1a36-87dc9ac941fa
# ╠═01608690-0e14-11eb-3faa-9b960f57f3fe
# ╠═06649ce0-177d-11eb-2092-d7160725252a
# ╠═b34f9d82-0ede-11eb-0f08-afa0cc898e80
# ╠═baf3f1d0-0ede-11eb-2c02-1f53ed1a6cd7
