#!/bin/bash

result1=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja1.php)
result2=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja2.php)
result3=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja3.php)
result4=$(wget -qO- http://fpuntel.000webhostapp.com/soja/estacaoMeteorologico.php)
result5=$(wget -qO- http://fpuntel.000webhostapp.com/soja/previsaoTempo.php)

echo -n result5|cut -c 1-3 >> Soja.csv
