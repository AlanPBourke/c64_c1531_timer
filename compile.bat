del %1.asm
del %1.prg
del %1.lbl
rem "C:\Users\alanp\apps\millfork\millfork.exe" %1.mfk -o %1 -t c64 -s -G vice -fsource-in-asm
"..\..\apps\millfork\millfork.exe" %1.mfk -o %1  -s -G vice -t .\c64_custom -O4 
if exist %1.prg (
    x64sc -moncommands "C:\Users\alanp\dev\space_gits_64\%1.lbl" %1.prg 
) 