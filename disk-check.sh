#!/bin/bash

uso=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$uso" -gt 80 ]; then
    echo "el porcentaje es mayor a 80%"
else
    echo "Uso disponible"
fi
