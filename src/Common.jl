### A Nbdev script file ###
### Autogenerated file. Don't modify. ###

module Common
#export
using TOML

#export
begin
"""
> getsetting(f:: AbstractString, key:: AbstractString) --> get the items related to a key from the Project.toml file
"""
function getsetting(f:: AbstractString, key:: AbstractString)
	a = TOML.parsefile(f)
	return a[key]
end

"""
> getsettings(f:: AbstractString, keys:: AbstractString) --> get the items related to the keys from the Project.toml file
"""
function getsettings(f:: AbstractString, keys)
	res = TOML.parsefile(f)
	for key in keys
		#"$res"
		res = res[key]
	end
	return res
end
end

end