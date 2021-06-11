#!/bin/bash

result1=$(wget -q0- http://fpuntel.000webhostapp.com/soja/soja1.php)
result2=$(wget -q0- http://fpuntel.000webhostapp.com/soja/soja2.php)
result3=$(wget -q0- http://fpuntel.000webhostapp.com/soja/soja3.php)
result4=$(wget -q0- http://fpuntel.000webhostapp.com/soja/estacaoMeteorologico.php)
result5=$(wget -q0- http://fpuntel.000webhostapp.com/soja/previsaoTempo.php)

a='echo $result5|cut -c 1-3'
b='echo $result5|cut -c 1-2'
c='echo $result5|cut -c 4-5'
d='echo $result5|cut -c 7-8'
e='echo $result5|cut -c 5-6'
f='echo $result5|cut -c 8-9'
g='echo $result5|cut -c 11-12'

echo "Dia da Semana"",""Soja Monitorada"",""Umidade do Solo"",""Tamanho da Planta"",""Temperatura"",""Umidade do Ar"",""Vento"",""Temp. Max"",""Temp. Min"",""Precipitacao"",""Precisa Irrigar?" > Soja.csv
echo -n $a "," >> Soja.csv
echo -n 1 "," >> Soja.csv
echo -n $result1 "," >> Soja.csv
echo -n $b "," >> Soja.csv
echo -n $c "," >> Soja.csv
echo -n $d "," >> Soja.csv
echo -n $e "," >> Soja.csv
echo -n $f "," >> Soja.csv
echo -n $g "," >> Soja.csv
if [ "$g" -gt "5" ];
then
	echo "Não"
else
	echo "Sim"
fi
