This is q1 answer

#a
awk 'END {print NR}' aliceinwonderland.txt 
#b
awk '{for (i=1; i<=NF; i++) if ($i=="Alice") count++} END {print count}' aliceinwonderland.txt 
#c
 awk '{for (i=1; i<=NF; i++) a[$i]++} END {for (k in a) if(a[k]==1) print k}' aliceinwonderland.txt 
#d
awk '{for (i=2; i<=NF-1; i++) a[$i]++} END {for (k in a) print a[k],k}' aliceinwonderland.txt | sort -n | tail -5 
#e
awk '{for (i=1; i<=NF; i++) {sum=sum+length($i); count++}} END {print sum/count}' aliceinwonderland.txt y
