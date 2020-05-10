#!/bin/bash
Horizontal="-----------------------------------------------------"
echo -e "\n\n$Horizontal"
echo "              Thailand COVID-19 database"
echo -e "$Horizontal\n\n"
source $HOME/snippets/color
file="covid-19.txt"
IFS="	"
deaths=0
cases=0
A=0
B=0
C=0
THpop=69428524
for var in $(cat $file)
do
	A=$B
	B=$C
	if [[ $var = "Thailand" ]] ; then
		((deaths=$deaths+$B))
		((cases=$cases+$A))
	fi
	C="$var"
	#echo "Number of case in Thailand is $cases"
done
echo -e "${GREEN}Number of case in Thailand = $cases people $RESET\n"
echo -e "${RED}Number of death in Thailand = $deaths people $RESET\n"
casesper=$(echo "scale=4 ; ($cases*100/$THpop)" | bc)
echo -e "${GREEN}Cases percentage : $casesper % $RESET\n"
deathsper=$(echo "scale=4 ; ($deaths*100/$cases)" | bc)
echo -e "${RED}Deaths percentage : $deathsper % $RESET\n"
echo -e "\n        *****************"
echo "        : All database  :"
echo -e "        *****************\n"
while read f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
do
	echo "Daterep : $f1"
	echo "Day : $f2"
	echo "Month : $f3"
	echo "Year : $f4"
	echo "Cases : $f5"
	echo "Deaths : $f6"
	echo "Countries and Territories : $f7"
	echo "GeoID : $f8"
	echo "Countries Territory code : $f9"
	echo "popData2018 : $f10"
done < covid-19.txt
exit 0

