#!/bin/bash
#Programa para revisar los tipos de operadores
#Author: Gorka Gallardo - @gorgalla_
numA=10
numB=4
echo "|********************************************|"
echo -e "\n  Operadores aritmeticos"
echo "  Numeros: A = $numA y B= $numB"
echo -e "\n"
echo "    A + B =" $((numA + numB))
echo "    A - B =" $((numA - numB))
echo "    A * B =" $((numA * numB))
echo "    A / B =" $((numA / numB))
echo "    A % B =" $((numA % numB))
echo "|********************************************|"
echo -e "\n  Operadores relacionales"
echo "  Numero A = $numA || Numero B = $numB"
echo -e "\n"
echo "    A > B =" $((numA > numB))
echo "    A < B =" $((numA < numB))
echo "    A >= B =" $((numA >= numB))
echo "    A <= B =" $((numA <= numB))
echo "    A == B =" $((numA == numB))
echo "    A != B =" $((numA != numB))
echo "|********************************************|"
echo -e "\n  Operadores de asignación"
echo "  Numero A = $numA || Numero B = $numB"
echo -e "\n"
echo "    A += B =" $((numA += numB))
echo "    A -= B =" $((numA -= numB))
echo "    A *= B =" $((numA *= numB))
echo "    A /= B =" $((numA /= numB))
echo "    A %= B =" $((numA %= numB))
echo "|********************************************|"
