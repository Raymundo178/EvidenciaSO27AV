#!bin/bash
SCRIPT=""

while true
do

echo" 
 __  __ _____ _   _ _   _      __  
|  \/  | ____| \ | | | | |     \ \ 
| |\/| |  _| |  \| | | | |    (_) |
| |  | | |___| |\  | |_| |     _| |
|_|  |_|_____|_| \_|\___/     (_) |
                               /_/"

	echo -e "1.- HOLA MUNDO"
	echo -e "2.- Hola mundo con variables"
	echo -e "3.- Arbol"
	echo -e "4.- Variables"
	echo -e "5.- Arrays"
	echo -e "6.- Otros uso de Variables"
	echo -e "7.- Operaciones Aritmeticas"
	echo -e "8.- Operaciones Logicas"
	echo -e "9.- Condicionales"
	echo -e "10.- Condicionales Case"
	echo -e "11.- Iteraciones for"
	echo -e "12.- Iteraciones while"
	echo -e "13.- Iteraciones until"
	echo -e "14.- Iteraciones select"
	echo -e "15.- Funciones"
	echo -e "16.- Librerias"
	echo -e "17.- Seniales"
	echo -e "18.- Colores"
	echo -e "x.- SALIR"
	
	echo -n "SELECCIONE UN SCRIPT:"
	read SCRIPT
	
	case ${SCRIPT} in
		1)
			source holamundo.sh
			;;
		2)
			source holavariable.sh
			;;
		3)
			source arbol.sh
			;;
		4)
			source variables.sh
			;;
		5)
			source arrays.sh
			;;
		6)
			source otrosusovar.sh
			;;
		7)
			source operaritmeticas.sh
			;;
		8)
			source operlogicas.sh
			;;
		9)
			source condicionales.sh
			;;
		10)
			source condcase.sh
			;;
		11)
			source iterfor.sh
			;;
		12)
			source iterwhile.sh
			;;
		13)
			source iteruntil.sh
			;;
		14)
			source iterselect.sh
			;;
		15)
			source funciones.sh
			;;
		16)
			source librerias.sh
			;;
		17)
			source seniales.sh
			;;
		18)
			source colores.sh
			;;
		x)
			break
			;;
		*)
			echo "Esta opcion no Existe"
			;;
	esac
done
			

----------------------------------------------------------------------------------------------
#!bin/bash

echo "HOLA A TODO EL MUNDO"
----------------------------------------------------------------------------------------------
#!bin/bash
Nombre = ""

echo "Escriba un nombre: "
read Nombre

echo "HOLA $Nombre"
----------------------------------------------------------------------------------------------
#!bin/bash

mkdir uno
mkdir dos
mkdir tres
mkdir seis
touch uno/test.txt
touch tres/file3.txt
mkdir tres/cuatro
mkdir tres/cuatro/cinco
touch seis/holamundo.sh
----------------------------------------------------------------------------------------------
#!/bin/sh
# Muestra el uso de variables
# No existen los tipos
# definición de variables
una_variable=666
MI_NOMBRE="Richard"
NOMBRES="Iñigo Asier Sten Roberto Pello"
BOOLEANO=true
echo "Echemos un ojo a las variables "
echo "Un número: ${una_variable}"
echo "Un nombre ${MI_NOMBRE}"
echo "Un grupo de nombres: ${NOMBRES}"
# Al script se le pueden pasar argumentos. Para recogerlos
# hay que usar : ${número} donde:
# ${0} : nombre del script
# ${1} : primer argumento
# ${2} : segundo argumento
# ...etc.
echo "Has invocado el script pasándome ${0} eta ${1} "
# Otras variables especiales
# $# : Número de argumentos
echo "Me has pasado $# argumentos"
# $@ : grupo de parámetros del script
echo IDa: ${!} y $@
# Variables de entorno
echo "Mi directorio actual: ${PWD} y mi usuario ${UID}"
----------------------------------------------------------------------------------------------
#!/bin/bash
# Muestra el uso de arrays
# Podemos crear arrays de una dimensión
asociaciones[0]="Gruslin"
asociaciones[1]="Hackresi"
asociaciones[2]="NavarradotNET"
asociaciones[3]="Riberlug"
# Otra forma de definirlos
partidos=("UPN" "PSN" "CDN" "IUN" "Nafarroa BAI" "RCN" )
numeros=(15 23 45 42 23 1337 23 666 69)
echo ${asociaciones[0]} es una asociación, ${partidos[1]} un partido
#echo "Tamaño: $#asociaciones"
#echo "Tamaño: ${$#{partidos}}"

Este es un ejemplo de algunas cosas
que podemos hacer con las variables

#!/bin/bash
# Muestra el uso de variables
# Sacar parte del valor de una variable (substring)
NOMBRE="Navarrux Live edition"
echo ${NOMBRE} una parte ${NOMBRE:8} y otra ${NOMBRE:8:4}
# Valores por defecto.
# ${variable:­valorpordefecto}
SINVALOR=
echo "Variable SINVALOR: ${SINVALOR:­31337} eta ${VACIO:­'Miguel Indurain'}"
echo "La variable SINVALOR no tiene valor algun ${SINVALOR} "
# Esto es igual pero el valor queda establecido
# ${variable:=valorpordefecto}
echo "Variable SINVALOR: ${SINVALOR:=31337} eta ${VACIO:='Miguel Indurain'}"
echo "La variable SINVALOR no tiene valor algun ${SINVALOR} "
# Y lo contrario: si la variable SÍ tiene valor, se le pone otro
# ${variable:+valorpordefecto}
PROGRAMA='sniffit'
echo "valor de PROGRAMA: ${PROGRAMA:+'tcpdump'} y ahora ${PROGRAMA}"
# Si la variable está sin definir o vacía se muestra un error. En caso
# contrario se le asigna un valor por defecto
# ${variable:?valorpordefecto}
echo "Valor de: ${EJEMPLO:?'Roberto'} y luego {EJEMPLO}"
# Otros
# ${!prefijo*} : nos devuelve una lista de las variables que comienzan
# con determinado prefijo.
# Podemos probar con el for:
for i in ${!P*};do echo $i ;done
----------------------------------------------------------------------------------------------
#!/bin/bash
# ­, +, *, /, %, **, variable++, variable­­, ­­variable, ++variable
# == : igualdad
# != : desigualdad
# Pruebas
VALOR1=23
VALOR2=45
# Para las operaciones puede usarse expr o []
RESULTADO=`expr ${VALOR1} + ${VALOR2}`
echo "Resultado: ${RESULTADO}"
RESULTADO=`expr ${VALOR1} + ${VALOR2} + 3`
echo "Resultado: ${RESULTADO}"
VALOR1=5
VALOR2=4
echo "${VALOR1} y ${VALOR2}"
RESULTADO=$[${VALOR1} + ${VALOR2} + 2]
echo "Ahora: ${VALOR1} + ${VALOR2} + 2 = ${RESULTADO}"
RESULTADO=$[${VALOR1} + $[${VALOR2} * 3]]
echo "Ahora: ${VALOR1} + ${VALOR2} * 3 = ${RESULTADO}"
----------------------------------------------------------------------------------------------
#!/bin/bash
## operaciones lógicas
# && : and
# || : or
# ! : not
booleano=true
# Si la variable booleano es true veremos por pantalla "OK"
$booleano && echo "OK" || echo "no es true"
otrobool=!${booleano}
test ${otrobool} || echo "Ahora es falso"
# Mediante && podemos encadenar comandos
#who && ps ­axf && echo "OK"
## comparaciones : ­eq, ­ne, ­lt, ­le, ­gt, or ­ge
valor=6
test $valor ­le 6 && echo "Se cumple"
# Asignaciones
nuevo=${valor}
test ${nuevo} ­eq ${valor} && echo "Son los mismo"
echo "Ahora ${nuevo} es lo mismo que ${valor}"

----------------------------------------------------------------------------------------------
#!/bin/bash
# Condicionales
VARIABLE=45
if [ ${VARIABLE} ­gt 0 ]; then
echo "${VARIABLE} es mayor que 0"
fi
# Podemos meter el then en la siguiente linea
if [ ­e /etc/shadow ]
then
echo "OK, parece que tienes un sistema con shadow pass"
fi
## Estructura if­else
OTRA=­23
if [ ${OTRA} ­lt 0 ]
then
echo "${OTRA} es menor que 0"
else
echo "${OTRA} es mayor que 0";
fi
## Estructura if­elseif
# Vamos a usar "read" para pedirle datos al usuario
echo ­n "Mete un valor: "
read VALOR1
echo ­n "Mete otro valor: "
read VALOR2
echo "Has introducido los valores ${VALOR1} y ${VALOR2} "
if [ ${VALOR1} ­gt ${VALOR2} ]
then
echo "${VALOR1} es mayor que ${VALOR2}"
elif [ ${VALOR1} ­lt ${VALOR2} ]
then
echo "${VALOR1} es menor que ${VALOR2}"
else
echo "${VALOR1} y ${VALOR2} son iguales"
fi
## Estructura test
# Ejecutar operacion si no se cumple la condición
# test condición || operacion
# Ejecutar operación si se cumple
# test condición && operacion
# Este test crea un fichero si no existe.
test ­f './fichero.txt' || touch fichero.txt
----------------------------------------------------------------------------------------------
#!/bin/sh
# script para comprobar si un fichero existe. Espera un parámetro
if [ ­e $1 ] && [ ­f $1 ]
then
echo "OK, el fichero existe "
else echo "NO existe"
fi
# Para comprobar la negación usaríamos el símbolo: !
if [ ! ­e $1 ]
then
echo “No existe”
fi
----------------------------------------------------------------------------------------------
#!/bin/bash
NOMBRE=""
echo ­n "Dame un nombre: "
read NOMBRE
case ${NOMBRE} in
iñigo)
echo "${NOMBRE} dice: me dedico a Navarrux"
;;
sten)
echo "${NOMBRE} dice: tengo un blog friki"
;;
asier)
echo "${NOMBRE}> dice: .NET me gusta"
;;
pello)
echo "${NOMBRE}> dice: el shell mola"
;;
*)
echo "A ${NOMBRE} no lo conozco"
esac

----------------------------------------------------------------------------------------------
#!/bin/bash
## un for simple
echo "FOR simple: "
for i in a b c d e f g h i
do
echo "letra: $i"
done
## for para recorrer array
NOMBRES="Iñigo Sten Asier Pello Roberto"
echo "FOR simple para recorrer un array: "
echo "Participantes en la 4party: "
for i in ${NOMBRES}
do
echo ${i}
done
## for con el resultado de un comando
echo "FOR con el resultado de un comando"
for i in `cat direcciones.txt`
do
echo ${i}
done
## for con un grupo de ficheros
echo "FOR con ficheros"
for i in *.sh
do
ls ­lh ${i}
done
## for clásico con un índice
echo "FOR clásico "
for (( cont=0 ; ${cont} < 10 ; cont=`expr $cont + 1` ))
do
echo "Ahora valgo> ${cont}"
done
----------------------------------------------------------------------------------------------
#!/bin/bash
## Estructura while
echo "WHILE en marcha"
cont=0
# Un bucle que terminará cuando $cont sea mayor que 100
while (test ${cont} ­lt 100)
do
cont=`expr $cont + 10`
echo "Valor del contador: ${cont}"
done
echo "Valor final del contador: ${cont}"
## Un while infinito
# while true; do comando; done

----------------------------------------------------------------------------------------------
#!/bin/bash
## El bucle until
# Un bucle until se ejecuta hasta que el test resulte falso
echo "Estructura until"
cont=15
until (test ${cont} ­lt 0)
do
cont=`expr $cont ­ 1`
echo "Valor del contador: ${cont}"
done
echo "Valor final del contador: ${cont}"

----------------------------------------------------------------------------------------------
#!/bin/bash
## Estructura select
# El select es similar al choice de msdos
# sirve para crear menus de seleccion
echo "Select de distros"
DISTROS="Debian Ubuntu Navarrux Gentoo Mandriva"
echo "Selecciona la mejor opción por favor: ${resultado}"
select resultado in ${DISTROS}
do
# Si la longitud de cadena de resultado es > 0 ya está seleccionado
(test ${#resultado} ­ne 0 ) && break
echo "Selecciona la mejor opción por favor: ${resultado}"
done
echo "Sistema seleccionado: [${resultado}] longitud de cadena: ${#resultado}"

----------------------------------------------------------------------------------------------
#!/bin/bash
## funciones
# Antes que nada hay que definir las funciones, si no daría error
# las funciones toman los parámetros con $numero, como el script
# variable
RESULTADO=0
# Una función que muestra valores por pantalla
muestrapantalla () {
echo "Valores: $0> $1 y $2 y $3"
}
# Puede usarse return pero solo para devolver números
sumame () {
echo "Estamos en la función: ${FUNCNAME}"
echo "Parametros: $1 y $2"
RESULTADO=`expr ${1} + ${2}`
return 0
}
# Es posible la función recursiva
boom () {
echo "No ejecutes esto... "
boom
}
# La llamada de se puede hacer así, sin paréntesis
muestrapantalla 3 4 "epa"
# Llamamos a la función y si devuelve 0 es correcto.
sumame 45 67 && echo "OK" || echo "Ocurrió un error"
echo "Resultado: ${RESULTADO} $!"

----------------------------------------------------------------------------------------------
#!/bin/bash
# No es que existan las librerías pero se puede simular
# algo similar
# Esta es la forma de importar funciones
source libreria.sh
muestrapantalla 69 123 "epa"
sumame 1337 3389 && echo "OK" || echo "Ocurrió un error"
echo "Resultado: ${RESULTADO} $!"

----------------------------------------------------------------------------------------------
#!/bin/bash
# señales
funcion () {
echo "Se ha recibido una señal: ${FUNCNAME} ${0}"
#exit
}
# Lo primero es establecer que señales se atraparán. Lo hacemos con trap
# Con esto evitaremos que se haga caso a Ctrl­C CTRL­Z
# trap ":" INT QUIT TSTP
# Esto es similar pero al recibir la señal dirigimos la ejecución a la función
trap "funcion" INT QUIT TSTP
# Un bucle sin fin para probar
while true
do
sleep 2
echo "ufff qué sueño..."
done

----------------------------------------------------------------------------------------------
#!/bin/bash
## Los colores ANSI
# para darle color a los scripts debemos usar los código ANSI
# junto "con echo ­e". Para meter el carácter especial escape
# usamos \033
# Ejem: \033[0m : volver al color por defecto
# \033[40m: color de fondo negro
# \033[40m\033[32m: fondo negro primer plano verde
# Esta es la muestra de colores, ejecútalo para ver cómo queda
echo ­e "\033[40m\033[37m Blanco \033[0m"
echo ­e "\033[40m\033[1;37m Gris claro \033[0m"
echo ­e "\033[40m\033[30m Negro \033[0m (esto es negro)"
echo ­e "\033[40m\033[1;30m Gris \033[0m"
echo ­e "\033[40m\033[31m Rojo \033[0m"
echo ­e "\033[40m\033[1;31m Rojo claro \033[0m"
echo ­e "\033[40m\033[32m Verde \033[0m"
echo ­e "\033[40m\033[1;32m Verde claro \033[0m"
echo ­e "\033[40m\033[33m Marrón \033[0m"
echo ­e "\033[40m\033[1;33m Amarillo \033[0m"
echo ­e "\033[40m\033[34m Azul \033[0m"
echo ­e "\033[40m\033[1;34m Azul claro \033[0m"
echo ­e "\033[40m\033[35m Purpura \033[0m"
echo ­e "\033[40m\033[1;35m Rosa \033[0m"
echo ­e "\033[40m\033[36m Cyan \033[0m"
echo ­e "\033[40m\033[1;36m Cyan claro \033[0m"
# Se pueden poner fondos de otro color:
echo ­e "\033[42m\033[31m Navarrux v1.0 \033[0m"
echo ­e "\033[40m\033[4;33m Amarillo \033[0m"


