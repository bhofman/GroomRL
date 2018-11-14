set term pdfcairo enhanced color size 12cm,12cm lw 2

set output 'SD-reward-test.pdf'

f(x,y)=exp(-x*y)

set view map
set xrange [-8:0]
set yrange [-8:0]
set ylabel 'ln z'
set xlabel 'ln {/Symbol D}'
set title 'exp(-ln {/Symbol D} ln z)'
splot f(x,y) with pm3d

set title '1 - exp(-ln {/Symbol D} ln z)'
splot 1-f(x,y) with pm3d

