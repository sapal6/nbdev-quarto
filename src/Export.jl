### A Nbdev script file ###
### Autogenerated file. Don't modify. ###

#export
begin
include("../src/Common.jl")
include("../src/Nb.jl")
include("../src/Readnb.jl")
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
> savenb(io, nb::Notebook)--> Reads the supplied notebook and creates an io and writes the content to the created io.
"""
function savenb(io, nb)
    println(io, header)
    println(io, subheader)
    println(io, "")

	for cell in nb
	    println(io, cell)
		println(io, "\n")
	end
	
	#for cell in nb.cells
	#	if cell.cell isa Code
	#		if cell.cell.isexport
	#		    println(io, cell.cell.code)
	#			print(io, "\n")
	#		end
	#	end   
   #end
end


#export
function checkifcode(nb)
	codecells = []
	for cell in nb.cells
		if cell.cell isa Code
			if cell.cell.isexport
				push!(codecells, cell.cell.code)
			end
		end
	end
	codecells
end


#export
"""
> savenb(path::String, dest::String)--> reads a notebook from the given path and writes the code cells to a new file in the given destination
"""
function savenb(path::String, dest::String)
	nb = readnb(path)
	name = nb.name
	nb = checkifcode(nb)
	if !isempty(nb)
	    modulename=uppercasefirst(strip(name, r"[0-9_]"))
	    open(joinpath(dest, modulename), "w") do io
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
> savenbs(fns::AbstractVector, srcdir::String, marker::String)--> maps the `export_file` function to each files
"""
function savenbs(fns::AbstractVector, dest::String)
	map(f->savenb(f, dest), fns)
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
function notebook2script(src::String, dest::String)
	savenbs(readfilenames(src), dest)
end


#export
export notebook2script


