#!/bin/bash

suma(){
	echo "Introduzca el primer numero"
	read num1
	
	echo "Introduzca el segundo numero"
	read num2
	
	resultado=$((num1 + num2))
    	echo "El resultado de la suma es: $resultado"
}

resta(){
	echo "Introduzca el primer numero"
	read num1
	
	echo "Introduzca el segundo numero"
	read num2
	
	resultado=$((num1 - num2))
    	echo "El resultado de la resta es: $resultado"
}

imprimirFrase(){
	echo "Hola mundo"
}

inicio(){
	echo "======================"
	echo "Seleccione la opcion que desee: "
	echo "======================"
	echo "1 - Sumar dos numeros"
	echo "2 - Restar dos numeros"
	echo "3 - Imprimir frase por consola"
	echo "4 - Salir"
	echo "======================"
}

opcion=0
while [ $opcion -ne 4 ]; do
    	inicio
    	read opcion
	
	if [ $opcion = 1 ]; then
		suma
	elif [ $opcion = 2 ]; then
		resta
	elif [ $opcion = 3 ]; then
		imprimirFrase
	elif [ $opcion = 4 ]; then
		echo "Saliendo"
	else
		echo "Opcion no valida"
	fi
done