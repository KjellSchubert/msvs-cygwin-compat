"c:/Program Files (x86)/Microsoft Visual Studio 12.0/vc/bin/dumpbin" /exports foo_shared.dll > foo_shared.dumpbin.txt
echo -e "LIBRARY foo_shared\nEXPORTS" > foo_shared.def
tail -n+19 foo_shared.dumpbin.txt | sed 's/\s\s*/ /g' | cut -d' ' -f5 >> foo_shared.def
# Also note the x86 vs x64 here, must match the machine type of the DLL!
# Use dumpbin /headers to tell executable format.
"c:/Program Files (x86)/Microsoft Visual Studio 12.0/vc/bin/lib" /def:foo_shared.def /out:foo_shared.lib /machine:x86
