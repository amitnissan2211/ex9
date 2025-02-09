#a
sed -E -n '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l 
#b
sed -E 's/\b(Sherlock|Holmes)\b/\n\1\n/g' sherlockholmes.txt | grep -E 'Sherlock|Holmes' | wc -l
#c
sed -E 's/^/Hello:/' sherlockholmes.txt 
#d
sed -E 's/[[:upper:]]{1}[a-z]+\s[[:upper:]]{1}[a-z]+/Amit/g' sherlockholmes.txt
#e
sed -E 's/\((.*)\)/[\1]/g' sherlockholmes.txt 

