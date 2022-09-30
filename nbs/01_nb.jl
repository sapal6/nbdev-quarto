### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 2ff66a30-2828-11ed-025f-a96a5f172073
#hide
begin
#for sharing environments between notebooks
import Pkg
Pkg.activate(Base.current_project())
end

# ╔═╡ 0e4705e3-7655-4d52-b40a-7898d5792469
#hide
begin
using PlutoUI
TableOfContents()
end

# ╔═╡ 3d61f4df-69d8-48fa-8b51-7c4365136a4b
using PlutoTest

# ╔═╡ 5e255fab-9d17-4d21-83fe-a48afcb024cd
md"## Code"

# ╔═╡ 9cdfbe41-2ecf-4722-8d6b-eefca849ef2a
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

# ╔═╡ 8d1ac05e-c6fb-452b-bfdc-e18a1ab8a519
md"## Mk"

# ╔═╡ 01912c80-dce5-409d-a918-2f95a0b75186
#export
"""
> struct Mk--> contains a markdown cell from a notebook (julia file)
> * Fields:
>   * mk--> markdown item
"""
struct Mk
	mk::String
end

# ╔═╡ cf0fe8b3-7b60-4ab2-b8da-7f46ea9702c1
md"## Cell"

# ╔═╡ b4b12208-a37a-415d-9a58-a2e29009fc2a
#export
"""
> struct cell--> contains a cell from a notebook (julia file)
> * Fields:
>   * cell--> String which makes up a cell
"""
mutable struct Cell
	cell
	end

# ╔═╡ 3be119f8-12b3-44cc-8ceb-d91ae9ea3130
x = Code("a=1+1", false, false, false, true)

# ╔═╡ b8004d5f-3217-4cf8-a2c5-fb9718c2d512
y = Cell(x)

# ╔═╡ f03164d5-0943-4541-9d4c-02b773820a98
z = Cell(Mk("# hello"))

# ╔═╡ af3ed97c-4572-419a-b175-f657ca028274
sample_code="a=1+1"

# ╔═╡ 57528d44-2cf4-419c-8354-80ed9edf0fb9
n=Cell(sample_code)

# ╔═╡ 1a1eb17c-fb02-4811-a167-14d9a9a90211
#noop
@test n.cell == "a=1+1"

# ╔═╡ bd1451d9-0cc5-4123-85e6-07403ffb3282
md"Every time a code cell is parsed, it is cast as a Cell type."

# ╔═╡ b532528f-89e4-4450-8d48-f03dc49f5109
md"## Notebook"

# ╔═╡ d2770e7c-33fa-4b0a-8971-adde3daf834e
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

# ╔═╡ e270bcb2-0a1d-4c7c-9ea6-ed557ad6c0f3
#export
begin
	export Code
	export Mk
	export Cell
	export Notebook
end

# ╔═╡ ad877d16-a8bf-4e46-9f54-ada7a90cfeaa
samplecodes=[Cell(Mk("this is a markdown cell")), Cell(Code("a=1+1", false, false, false, true)), Cell(Code("export\n function test(x)  x+1 end", true, false, false, false))]

# ╔═╡ 261762ee-66b9-4ff2-b209-69b2559356da
notebook=Notebook(samplecodes, "testnb.jl")

# ╔═╡ 6327ed9c-1888-44b1-abdf-528b36eb2e03
#noop
@test notebook.cells == samplecodes

# ╔═╡ Cell order:
# ╠═2ff66a30-2828-11ed-025f-a96a5f172073
# ╠═0e4705e3-7655-4d52-b40a-7898d5792469
# ╠═3d61f4df-69d8-48fa-8b51-7c4365136a4b
# ╠═e270bcb2-0a1d-4c7c-9ea6-ed557ad6c0f3
# ╠═5e255fab-9d17-4d21-83fe-a48afcb024cd
# ╠═9cdfbe41-2ecf-4722-8d6b-eefca849ef2a
# ╠═8d1ac05e-c6fb-452b-bfdc-e18a1ab8a519
# ╠═01912c80-dce5-409d-a918-2f95a0b75186
# ╠═cf0fe8b3-7b60-4ab2-b8da-7f46ea9702c1
# ╠═b4b12208-a37a-415d-9a58-a2e29009fc2a
# ╠═3be119f8-12b3-44cc-8ceb-d91ae9ea3130
# ╠═b8004d5f-3217-4cf8-a2c5-fb9718c2d512
# ╠═f03164d5-0943-4541-9d4c-02b773820a98
# ╠═af3ed97c-4572-419a-b175-f657ca028274
# ╠═57528d44-2cf4-419c-8354-80ed9edf0fb9
# ╠═1a1eb17c-fb02-4811-a167-14d9a9a90211
# ╠═bd1451d9-0cc5-4123-85e6-07403ffb3282
# ╠═b532528f-89e4-4450-8d48-f03dc49f5109
# ╠═d2770e7c-33fa-4b0a-8971-adde3daf834e
# ╠═ad877d16-a8bf-4e46-9f54-ada7a90cfeaa
# ╠═261762ee-66b9-4ff2-b209-69b2559356da
# ╠═6327ed9c-1888-44b1-abdf-528b36eb2e03
