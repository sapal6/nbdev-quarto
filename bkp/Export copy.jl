### A Nbdev script file ###
### Autogenerated file. Don't modify. ###

module Export copy
#export
import Pluto: Notebook, Cell, load_notebook_nobackup

#export
begin
"""
> struct Nucleus--> This is the lowest entity of a code notebook. This type represents the code cell in a Pluto notebook.
> * Fields:
>   * code--> String which makes up a code cell
"""
Base.@kwdef mutable struct Nucleus
	code::String=""
	end

"""
> Nucleus(code)-->Getter for accessing the constructer of the Nucleus type
"""
nucleus(code) = Nucleus(code = code)
end

#export
begin
"""
> struct Nb--> a notebook having nuclei made up of code cells only.
> * Fields:
>   * nuclei--> Array of Nucleus type
>   * name--> name of notebook
"""
mutable struct Nb
	nuclei::Array{Nucleus,1}
	name::AbstractString
end

"""
> nuclei(nuclei::Array)--> Helper to collect an array of Nucleus.	
"""
nuclei(nuclei::Array) = nuclei

"""
> nuclei(nuclei::Array)--> Helper to collect an name of a notebook.
"""
name(name::AbstractString) = name
end

#export
begin
"""
Headers that would appear in a code file
"""
const header = "### A Nbdev script file ###"
const subheader = "### Autogenerated file. Don't modify. ###"
end

#export
"""
This had to be done because having the cell iddelimeter as a constant gives an error during parsing the notebook
"""
celliddelim=string("#"," ╔═╡ ")

#export
"""
marks the end of a cell
"""
const cellsuff = "\n\n"

#export
"""
> struct Scrubbednb--> Represents a notebook from which all but code to be exported are scrubbed off.
> * Fields-->
>   * cells--> Vector of strings.
"""
mutable struct Scrubbednb
	cells::Array{String, 1}
end

#export
"""
> collectnuclei(notebook::Scrubbednb, marker)--> Reads a notebook, collects code from code cells and returns an array of Nucelus.
"""
function collectnuclei(nb::Scrubbednb, marker)
	nbcells=nb.cells
	nuclei=[]
		
    for i in 1:length(nbcells)
    	raw_code=nbcells[i]
    	nucleus=Nucleus(raw_code)
    	
    	if startswith(raw_code, marker)
            push!(nuclei,nucleus)
        end
    	
    end
	 nuclei
end

#export
begin
"""
>loadscrubbednb(io, path)::Scrubbednb--> These are modification of the Pluto.load_notebook methods. Scrubs the notebook of all stuff but the code to be exported.
"""
function loadscrubbednb(io, path)::Scrubbednb
    collectedcells = []
		
	# ignore first bits of file
    readuntil(io,celliddelim)

    last_read = ""
    while !eof(io)
        cellidstr = String(readline(io))
		#TODO: read until cell order: or 00000000-0000-0000-0000-000000000001
		# which is the the line marking Cell order or start of  pluto
		# project.toml(if present)
        if cellidstr == "Cell order:" || cellidstr == "00000000-0000-0000-0000-000000000001"
            break
        else
            rawcode = String(readuntil(io, celliddelim))
            # change Windows line endings to Linux
            normalisedcode = replace(rawcode, "\r\n" => "\n")
            # remove the cell appendix
            code = normalisedcode[1:prevind(normalisedcode, end, length(cellsuff))]

            readcell = code
            push!(collectedcells, readcell)
        end
    end
		
	Scrubbednb(collectedcells)
end
	
function loadscrubbednb(path::String)::Scrubbednb
    local loaded
    open(path, "r") do io
        loaded = loadscrubbednb(io, path)
    end
    loaded
end
end

#export
begin
"""
> loadnb(filename::String, marker::String)--> High level function which calls _load_nb
"""
loadnb(filename::String, marker::String) = _loadnb(filename, marker)

"""
> _load_nb(filename::String, marker::String)--> creates a scrubbed notebook and returns a curated Nb type having code to be exported.
"""
function _loadnb(fn::String, marker::String)
		scrubbednb=loadscrubbednb(fn)
		collectednuclei=nuclei(collectnuclei(scrubbednb, marker))
		Nb(collectednuclei, basename(fn))
end

end

#export
"""
> strip --> Helper fucntion to replace a substring y in a string x with blank.
"""
strip=(x::String,y) -> replace(x, y=>"")

#export
begin
"""
> savenb(io, nb)--> Reads the supplied notebook and creates an io and writes stuffs like the module name and the content to the created io.
"""
function savenb(io, nb)
    println(io, header)
    println(io, subheader)
    println(io, "")
    println(io, "module $(uppercasefirst(strip(strip(nb.name, r"[0-9_]"), r".jl")))")
	for nucleus in nb.nuclei
			println(io, nucleus.code*"\n")
    end
	#notebook
	print(io, "end")	
end

"""
> savenb(nb::Nb, path::String)--> Creates a file in the supplied path with the name in the NB type.
"""
function savenb(nb::Nb, srcdir::String)
	fn=uppercasefirst(strip(nb.name, r"[0-9_]"))
	open(joinpath(srcdir, fn), "w") do io
        savenb(io, nb)
    end
end
end

#export
begin
"""
> readfilenames(nbsdir::String)--> Reads files in the directory and subdirectories in the given path. Reads only the files with ".jl" extension
"""
function readfilenames(nbsdir::String)
	files=[]
	for file in readdir(nbsdir)
			if endswith(file, ".jl")
				push!(files,joinpath(nbsdir, file))
			end
	end
	files
end

end

#export
"""
> exportfile(f::String, srcdir::String, marker::String)--> Loads the file in the supplied path and reads the cells which are marked with "#export". Then saves the notebook in the given path
"""
function exportfile(f::String, srcdir::String, marker::String)
	nb=loadnb(f, marker)
	if !isempty(nb.nuclei)
	    savenb(nb, srcdir)
	end
end

#export
"""
> exportcontent(fns::AbstractVector, srcdir::String, marker::String)--> maps the `export_file` function to each files
"""
function exportcontent(fns::AbstractVector, srcdir::String, marker::String)
	map(f->exportfile(f, srcdir, marker), fns)
end

#export
"""
> getfileextension(fn)--> get the file extensions in the pwd
"""
function getfileextension(fn)
    return fn[findlast(isequal('.'),fn):end]
end

#export
"""
> notebook2script(nbsdir::String, srcdir::String)--> Export all the code from the provided notebook directory to the given source directory
"""
function notebook2script(nbsdir::String, srcdir::String)
	exportcontent(readfilenames(nbsdir), srcdir, "#export")
end

#export
export notebook2script

end