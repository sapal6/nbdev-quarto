### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 43451278-5097-42bf-825d-5a394f04b422
#hide
begin
#for sharing environments between notebooks
import Pkg
Pkg.activate(Base.current_project())
end

# ╔═╡ 5c10e02c-4613-46f0-afc7-c47d626f5f2f
#hide
begin
using PlutoUI
TableOfContents()
end

# ╔═╡ 83c26df2-a9da-475d-9475-ee677985d2f7
using PlutoTest

# ╔═╡ 130fb805-9e01-4ff6-84d3-b6fd7ad38fa3
#export
include("../src/Nb.jl")

# ╔═╡ bca8d2d5-fd42-4243-83cb-a8bffeaf0c03
#export
begin
Code =Nb.Code
Mk = Nb.Mk
Cell = Nb.Cell
Notebook = Nb.Notebook
end

# ╔═╡ 5da61dab-e09d-4556-a4c9-90c482c8c8d4
#export
CodeOrMk = Union{Code, Mk}

# ╔═╡ bfdbfee5-1fd9-4b03-9bb3-e427a302b238
md"## Getcelltype"

# ╔═╡ d251e196-725b-4c43-b248-a4a29423e43e
md"While reading a notebook, we need to capture wether a cell contains amrkdown or code. Furthermore, the code cells also needs to be recognized if they are export only, document only or are supposed to be hidden."

# ╔═╡ 4ad3dea1-eaba-40ff-bc3d-40fe28409ae3
#export
"""
> getcellwithtype(cell::String)::CodeOrMk--> Cast cell into respective types
"""
function getcellwithtype(cell::String)::CodeOrMk
	if startswith(cell, "md")
		cell = Mk(cell)
	elseif startswith(cell, "#export")
		cell = Code(cell, true, false, false, false)
	elseif startswith(cell, "#hide")
		cell = Code(cell, false, true, false, false)
	elseif startswith(cell, "#noop")
		cell = Code(cell, false, false, true, false)
	else
		cell = Code(cell, false, false, false, true)
	end

	return cell

end

# ╔═╡ a32d02b7-1a23-4548-982f-d412e00f4cbe
sample1= "#export\n 1+1"

# ╔═╡ 81cbc2ec-da64-4269-afcc-451108afd5df
cell = getcellwithtype(sample1)

# ╔═╡ aa857fb3-d7e6-496b-bb02-d45c69a8d18b
@test typeof(cell) === Code

# ╔═╡ 8c347fd9-6cf9-4c27-834b-66d8216f9df6
md"## Collectcells"

# ╔═╡ 13ac6596-0194-48be-9359-a1dfbf350491
#export
"""
This had to be done because having the cell iddelimeter as a constant gives an error during parsing the notebook
"""
celliddelim=string("#"," ╔═╡ ")

# ╔═╡ f7311095-189f-4dd2-8d74-d4635c4ab6f0
#export
"""
marks the end of a cell
"""
const cellsuff = "\n\n"

# ╔═╡ f718e565-e37a-4d9e-a530-ec522010607f
#export
"""
> collectcells(io)--> Collect cells of a notebook
"""
function collectcells(io)
    collectedcells = []
		
	# ignore first bits of file
    readuntil(io,celliddelim)

    last_read = ""
    while !eof(io)
        cellidstr = String(readline(io))
        if cellidstr == "Cell order:" || cellidstr == "00000000-0000-0000-0000-000000000001"
            break
        else
            rawcell = String(readuntil(io, celliddelim))
            # change Windows line endings to Linux
            normalisedcell = replace(rawcell, "\r\n" => "\n")
            # remove the cell appendix
            cell = normalisedcell[1:prevind(normalisedcell, end, length(cellsuff))]
			cell = Cell(getcellwithtype(cell))
            push!(collectedcells, cell)
        end
    end
		
	return collectedcells
end

# ╔═╡ 82ddfd46-be89-42a3-a046-fef4efab5e2e
md"""A notebook is read line by line till the marker "#"," ╔═╡ "  is reached which marks the end of one cell and the begining of another. This is conitnued till the string "Cell order:" or "00000000-0000-0000-0000-000000000001" is reached which marks the begining of Pluto specific stuff and the end of the cell stuffs which we want."""

# ╔═╡ f05dd75a-f149-4e14-80c1-db9d3102953e
md"## Readnb"

# ╔═╡ 9ded7323-ad32-4f15-9485-7be2814f61e1
#export
begin	
"""
>readnb(path::String)::Notebook--> read a notebook and return an array of cells
"""	
function readnb(path::String)::Notebook
    cells = []
    open(path, "r") do io
        cells = collectcells(io)
    end
    Notebook(cells, basename(path))
end
end

# ╔═╡ 3777fcb5-9788-4da1-b972-7959ba204e86
md"When `readnb` is provided with the `path` of a file, it reads the file and returns a `Notebook` type. A `Notebook` type contains an array of `Cells`"

# ╔═╡ 701f6f28-c37b-43fb-ba6b-257baca5f0b6
@test typeof(readnb("06_testfile.jl")) === Notebook

# ╔═╡ Cell order:
# ╠═43451278-5097-42bf-825d-5a394f04b422
# ╠═5c10e02c-4613-46f0-afc7-c47d626f5f2f
# ╠═83c26df2-a9da-475d-9475-ee677985d2f7
# ╠═130fb805-9e01-4ff6-84d3-b6fd7ad38fa3
# ╠═bca8d2d5-fd42-4243-83cb-a8bffeaf0c03
# ╠═5da61dab-e09d-4556-a4c9-90c482c8c8d4
# ╠═bfdbfee5-1fd9-4b03-9bb3-e427a302b238
# ╠═d251e196-725b-4c43-b248-a4a29423e43e
# ╠═4ad3dea1-eaba-40ff-bc3d-40fe28409ae3
# ╠═a32d02b7-1a23-4548-982f-d412e00f4cbe
# ╠═81cbc2ec-da64-4269-afcc-451108afd5df
# ╠═aa857fb3-d7e6-496b-bb02-d45c69a8d18b
# ╠═8c347fd9-6cf9-4c27-834b-66d8216f9df6
# ╠═13ac6596-0194-48be-9359-a1dfbf350491
# ╠═f7311095-189f-4dd2-8d74-d4635c4ab6f0
# ╠═f718e565-e37a-4d9e-a530-ec522010607f
# ╠═82ddfd46-be89-42a3-a046-fef4efab5e2e
# ╠═f05dd75a-f149-4e14-80c1-db9d3102953e
# ╠═9ded7323-ad32-4f15-9485-7be2814f61e1
# ╠═3777fcb5-9788-4da1-b972-7959ba204e86
# ╠═701f6f28-c37b-43fb-ba6b-257baca5f0b6
