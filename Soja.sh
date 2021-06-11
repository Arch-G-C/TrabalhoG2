#!/bin/bash

result1=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja1.php)
result2=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja2.php)
result3=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja3.php)
result4=$(wget -qO- http://fpuntel.000webhostapp.com/soja/estacaoMeteorologica.php)
result5=$(wget -qO- http://fpuntel.000webhostapp.com/soja/previsaoTempo.php)

a=`echo $result5|cut -c 1-3`
b=`echo $result4|cut -c 1-2`
c=`echo $result4|cut -c 4-5`
d=`echo $result4|cut -c 7-8`
e=`echo $result5|cut -c 5-6`
f=`echo $result5|cut -c 8-9`
g=`echo $result5|cut -c 11-12`
h=`echo $result5|cut -c 13-15`
i=`echo $reuslt5|cut -c 17-18`
j=`echo $result5|cut -c 20-21`
l=`echo $result5|cut -c 23-24`

echo "Dia da Semana"",""Soja Monitorada"",""Umidade do Solo"",""Tamanho da Planta"",""Temperatura"",""Umidade do Ar"",""Vento"",""Tem>
echo -n $a ","  >> Soja.csv
echo -n 1 ",">> Soja.csv
echo -n $result1 "," >> Soja.csv
echo -n $b "," >> Soja.csv
echo -n $c ",">> Soja.csv
echo -n $d ",">> Soja.csv
echo -n $e ",">>Soja.csv
echo -n $f ",">>Soja.csv
echo -n $g >>Soja.csv

if [ "$g" -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi

echo -n $h ","  >> Soja.csv
echo -n 1 ",">> Soja.csv
echo -n $result1 "," >> Soja.csv
echo -n $b "," >> Soja.csv
echo -n $c ",">> Soja.csv
echo -n $d ",">> Soja.csv
echo -n $i ",">>Soja.csv
echo -n $j ",">>Soja.csv
echo -n $l >>Soja.csv

if [ "$l" -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi
