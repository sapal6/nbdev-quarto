### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 6be32f5e-05ce-4be3-b7af-64821076fda1
#hide
import Pkg

# ╔═╡ 0a803a48-8ad1-4d3c-9272-c0d1270d8e92
#hide
Pkg.activate(Base.current_project())

# ╔═╡ 00758500-175a-11ec-173c-670141a85b02
#export
include("../src/Nb.jl")

# ╔═╡ 1533a6c2-c46d-41b5-8513-904d52981ddb
#export
include("../src/Readnb.jl")

# ╔═╡ a4b28fa9-e8a1-463d-a038-a95edc38ec82
#export
include("../src/Common.jl")

# ╔═╡ d95ea77e-1074-4bf6-8b0a-1771177f56af
#export
Code = Nb.Code

# ╔═╡ 9f3cd860-e12f-4313-9723-268e6021896c
#export
Mk = Nb.Mk

# ╔═╡ 27b45a3c-43cf-4f5f-bfb1-86a80457efd9
#export
Cell = Nb.Cell

# ╔═╡ ca559064-65b4-4f09-b125-c08aef68aea6
#export
Notebook = Nb.Notebook

# ╔═╡ 1a3e6df4-1c6f-47a9-b5b4-2a1405944ec6
#export
readnb = Readnb.readnb

# ╔═╡ 50c11a98-ad15-41ef-8833-0520042e572d
#export
getsetting = Common.getsetting

# ╔═╡ 4cac1536-5f2b-4449-b286-e0da6562aaea
#export
getsettings = Common.getsettings

# ╔═╡ e5b8c370-5b31-4793-b21b-d28fa26358ee
#export
strip = Common.strip

# ╔═╡ 1e54a76c-bf18-4ca6-b843-8d24c8fe4afe
#export
export Code,Mk,Cell,Notebook, readnb, getsetting, getsettings, strip

# ╔═╡ 74c18a01-7822-4145-bb4e-084f7a3628ca


# ╔═╡ f098e544-f431-49a4-8d91-00e01bf6ddcd


# ╔═╡ 9724fdac-8ffd-483c-9d7e-a4cdc8d0dd72
#hide
Export.notebook2script(joinpath("..", "nbs"), joinpath("..", "src"))

# ╔═╡ Cell order:
# ╠═6be32f5e-05ce-4be3-b7af-64821076fda1
# ╠═0a803a48-8ad1-4d3c-9272-c0d1270d8e92
# ╠═00758500-175a-11ec-173c-670141a85b02
# ╠═1533a6c2-c46d-41b5-8513-904d52981ddb
# ╠═a4b28fa9-e8a1-463d-a038-a95edc38ec82
# ╠═d95ea77e-1074-4bf6-8b0a-1771177f56af
# ╠═9f3cd860-e12f-4313-9723-268e6021896c
# ╠═27b45a3c-43cf-4f5f-bfb1-86a80457efd9
# ╠═ca559064-65b4-4f09-b125-c08aef68aea6
# ╠═1a3e6df4-1c6f-47a9-b5b4-2a1405944ec6
# ╠═50c11a98-ad15-41ef-8833-0520042e572d
# ╠═4cac1536-5f2b-4449-b286-e0da6562aaea
# ╠═e5b8c370-5b31-4793-b21b-d28fa26358ee
# ╠═1e54a76c-bf18-4ca6-b843-8d24c8fe4afe
# ╠═74c18a01-7822-4145-bb4e-084f7a3628ca
# ╠═f098e544-f431-49a4-8d91-00e01bf6ddcd
# ╠═9724fdac-8ffd-483c-9d7e-a4cdc8d0dd72
