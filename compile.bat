del %1.asm
del %1.prg
del %1.lbl

"..\..\apps\millfork\millfork.exe" %1.mfk -o %1  -s -G vice -t .\c64_custom -O4 
if exist %1.prg (
    x64sc -moncommands "C:\Users\alanp\dev\space_gits_64\%1.lbl" %1.prg 
) 
