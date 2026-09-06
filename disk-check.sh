#!/bin/bash

uso=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

usado=$(df -h / | awk 'NR==2 {print $3}' )

disponible=$(df -h / | awk 'NR==2 {print $4}' )

echo "El espacio disponible es $disponible y el espacio usado es $usado" >>log.txt
if [ "$uso" -gt 90 ]; then
    echo " $(date) - el porcentaje es mayor a 90%, es urgente" >> log.txt
elif [ "$uso" -gt 80 ]; then	
	echo " $(date) - Porcentaja usado es mayor a 80% ">>log.txt
else
    echo "$(date) - Uso disponible" >> log.txt
fi


