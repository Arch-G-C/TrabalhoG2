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
g=`echo $result5|cut -c 11`

soja1=`echo $result1|cut -c 1-2`
soja2=`echo $result1|cut -c 4-5`

echo "Dia da Semana"";""Soja Monitorada"";""Umidade do Solo"";""Tamanho da Planta"";""Temperatura"";""Umidade do Ar"";""Vento"";""Temp.Max"";""Temp.Min"";""Precipitacao"";""Precisa Irrigar?"";"  > Soja.csv
#soja1
#segunda
echo -n $a ";"  >> Soja.csv
echo -n 1 ";">> Soja.csv
echo -n $soja1 ";" >> Soja.csv
echo -n $soja2 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $e ";">>Soja.csv
echo -n $f ";">>Soja.csv
echo -n $g ";">> Soja.csv
if [ $g -gt 5 ];
then
	echo "não" >> Soja.csv
else
	echo "sim" >> Soja.csv
fi

#terca
h=`echo $result5|cut -c 13-15`
i=`echo $result5|cut -c 17-18`
j=`echo $result5|cut -c 20-21`
l=`echo $result5|cut -c 23`



echo -n $h ";"  >> Soja.csv
echo -n 1 ";">> Soja.csv
echo -n $soja1 ";" >> Soja.csv
echo -n $soja2 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $i ";">>Soja.csv
echo -n $j ";">>Soja.csv
echo -n $l ";">>Soja.csv
if [ $l -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi



#quarta
m=`echo $result5|cut -c 25-27`
n=`echo $result5|cut -c 29-30`
o=`echo $result5|cut -c 32-33`
p=`echo $result5|cut -c 35`

echo -n $m ";"  >> Soja.csv
echo -n 1 ";">> Soja.csv
echo -n $soja1 ";" >> Soja.csv
echo -n $soja2 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $n ";">>Soja.csv
echo -n $o ";">>Soja.csv
echo -n $p ";">>Soja.csv
if [ $p -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi


#quinta
q=`echo $result5|cut -c 37-39`
r=`echo $result5|cut -c 41-42`
s=`echo $result5|cut -c 44-45`
t=`echo $result5|cut -c 47`



echo -n $q ";"  >> Soja.csv
echo -n 1 ";">> Soja.csv
echo -n $soja1 ";" >> Soja.csv
echo -n $soja2 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $r ";">>Soja.csv
echo -n $s ";">>Soja.csv
echo -n $t ";">>Soja.csv
if [ $t -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi

#sexta
u=`echo $result5|cut -c 49-51`
v=`echo $result5|cut -c 53-54`
x=`echo $result5|cut -c 56-57`
y=`echo $result5|cut -c 59`

echo -n $u ";"  >> Soja.csv
echo -n 1 ";">> Soja.csv
echo -n $soja1 ";" >> Soja.csv
echo -n $soja2 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $v ";">>Soja.csv
echo -n $x ";">>Soja.csv
echo -n $y ";">>Soja.csv
if [ $y -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi

#sabado
z=`echo $result5|cut -c 61-63`
a1=`echo $result5|cut -c 65-66`
b1=`echo $result5|cut -c 68-69`
c1=`echo $result5|cut -c 71`


echo -n $z ";"  >> Soja.csv
echo -n 1 ";">> Soja.csv
echo -n $soja1 ";" >> Soja.csv
echo -n $soja2 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $a1 ";">>Soja.csv
echo -n $b1 ";">>Soja.csv
echo -n $c1 ";">>Soja.csv
if [ $c1 -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi

#domingo
d1=`echo $result5|cut -c 73-75`
e1=`echo $result5|cut -c 77-78`
f1=`echo $result5|cut -c 80-81`
g1=`echo $result5|cut -c 83`


echo -n $d1 ";"  >> Soja.csv
echo -n 1 ";">> Soja.csv
echo -n $soja1 ";" >> Soja.csv
echo -n $soja2 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $e1 ";">>Soja.csv
echo -n $f1 ";">>Soja.csv
echo -n $g1 ";">>Soja.csv
if [ $g1 -gt 5 ];
then
        echo "não" >> Soja.csv
else
       echo "sim" >> Soja.csv

fi


#soja2
#segunda


soja3=`echo $result2|cut -c 1-2`
soja4=`echo $result2|cut -c 4-5`



echo -n $a ";"  >> Soja.csv
echo -n 2 ";">> Soja.csv
echo -n $soja3 ";" >> Soja.csv
echo -n $soja4 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $e ";">>Soja.csv
echo -n $f ";">>Soja.csv
echo -n $g ";">> Soja.csv
if [ $g -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi


#terca

echo -n $h ";"  >> Soja.csv
echo -n 2 ";">> Soja.csv
echo -n $soja3 ";" >> Soja.csv
echo -n $soja4 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $i ";">>Soja.csv
echo -n $j ";">>Soja.csv
echo -n $l ";">>Soja.csv
if [ $l -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi

#quarta

echo -n $m ";"  >> Soja.csv
echo -n 2 ";">> Soja.csv
echo -n $soja3 ";" >> Soja.csv
echo -n $soja4 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $n ";">>Soja.csv
echo -n $o ";">>Soja.csv
echo -n $p ";">>Soja.csv
if [ $p -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi


#quinta

echo -n $q ";"  >> Soja.csv
echo -n 2 ";">> Soja.csv
echo -n $soja3 ";" >> Soja.csv
echo -n $soja4 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $r ";">>Soja.csv
echo -n $s ";">>Soja.csv
echo -n $t ";">>Soja.csv
if [ $t -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi


#sexta

echo -n $u ";"  >> Soja.csv
echo -n 2 ";">> Soja.csv
echo -n $soja3 ";" >> Soja.csv
echo -n $soja4 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $v ";">>Soja.csv
echo -n $x ";">>Soja.csv
echo -n $y ";">>Soja.csv
if [ $y -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi


#sabado

echo -n $z ";"  >> Soja.csv
echo -n 2 ";">> Soja.csv
echo -n $soja3 ";" >> Soja.csv
echo -n $soja4 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $a1 ";">>Soja.csv
echo -n $b1 ";">>Soja.csv
echo -n $c1 ";">>Soja.csv
if [ $c1 -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi

#domingo

echo -n $d1 ";"  >> Soja.csv
echo -n 2 ";">> Soja.csv
echo -n $soja3 ";" >> Soja.csv
echo -n $soja4 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $e1 ";">>Soja.csv
echo -n $f1 ";">>Soja.csv
echo -n $g1 ";">>Soja.csv
if [ $g1 -gt 5 ];
then
        echo "não" >> Soja.csv
else
       echo "sim" >> Soja.csv

fi

#soja3
#segunda


soja5=`echo $result3|cut -c 1-2`
soja6=`echo $result3|cut -c 4-5`



echo -n $a ";"  >> Soja.csv
echo -n 3 ";">> Soja.csv
echo -n $soja5 ";" >> Soja.csv
echo -n $soja6 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $e ";">>Soja.csv
echo -n $f ";">>Soja.csv
echo -n $g ";">> Soja.csv
if [ $g -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi



#terca

echo -n $h ";"  >> Soja.csv
echo -n 3 ";">> Soja.csv
echo -n $soja5 ";" >> Soja.csv
echo -n $soja6 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $i ";">>Soja.csv
echo -n $j ";">>Soja.csv
echo -n $l ";">>Soja.csv
if [ $l -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi


#quarta

echo -n $m ";"  >> Soja.csv
echo -n 3 ";">> Soja.csv
echo -n $soja5 ";" >> Soja.csv
echo -n $soja6 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $n ";">>Soja.csv
echo -n $o ";">>Soja.csv
echo -n $p ";">>Soja.csv
if [ $p -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi


#quinta

echo -n $q ";"  >> Soja.csv
echo -n 3 ";">> Soja.csv
echo -n $soja5 ";" >> Soja.csv
echo -n $soja6 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $r ";">>Soja.csv
echo -n $s ";">>Soja.csv
echo -n $t ";">>Soja.csv
if [ $t -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi


#sexta

echo -n $u ";"  >> Soja.csv
echo -n 3 ";">> Soja.csv
echo -n $soja5 ";" >> Soja.csv
echo -n $soja6 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $v ";">>Soja.csv
echo -n $x ";">>Soja.csv
echo -n $y ";">>Soja.csv
if [ $y -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi

#sabado

echo -n $z ";"  >> Soja.csv
echo -n 3 ";">> Soja.csv
echo -n $soja3 ";" >> Soja.csv
echo -n $soja4 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $a1 ";">>Soja.csv
echo -n $b1 ";">>Soja.csv
echo -n $c1 ";">>Soja.csv
if [ $c1 -gt 5 ];
then
        echo "não" >> Soja.csv
else
        echo "sim" >> Soja.csv
fi


#domingo

echo -n $d1 ";"  >> Soja.csv
echo -n 3 ";">> Soja.csv
echo -n $soja5 ";" >> Soja.csv
echo -n $soja6 ";" >> Soja.csv
echo -n $b ";" >> Soja.csv
echo -n $c ";">> Soja.csv
echo -n $d ";">> Soja.csv
echo -n $e1 ";">>Soja.csv
echo -n $f1 ";">>Soja.csv
echo -n $g1 ";">>Soja.csv
if [ $g1 -gt 5 ];
then
        echo "não" >> Soja.csv
else
       echo "sim" >> Soja.csv

fi


#Medias Semanais

MM=$[(e+i+n+r+v+a1+e1)/7]
echo "Temperatura Max Media" > SojaMedia.txt
echo $MM >> SojaMedia.txt

MN=$[(f+j+o+s+x+b1+f1)/7]
echo "Temperatura Min Media" >> SojaMedia.txt
echo $MN >> SojaMedia.txt

PM=$[(g+l+p+t+y+c1+g1)/7]
echo "Precipitacao Media Semanal" >> SojaMedia.txt
echo $PM >> SojaMedia.txt
