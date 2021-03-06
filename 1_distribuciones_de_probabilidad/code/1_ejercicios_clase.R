
help("Distributions")

#Distribuci�n Binomial
# Suponga que hay doce preguntas de opci�n m�ltiple en un examen de matem�ticas. 
#Cada pregunta tiene cinco posibles respuestas, y s�lo una de ellas es correcta. 
#Encuentre la probabilidad de tener cuatro o menos respuestas correctas si un estudiante intenta responder a cada pregunta al azar.#
p = 1/5
n = 12
k = 4
dpb<-dbinom(k,size=n,prob=0.2)
print("para cuatro respuestas exactamente")
dpb

prob <- NULL
for(k in 0:4){
  prob <- c(prob,dbinom(k,n,p))
  prob
}
prob
print("probabilidad de tener cuatro o menos respuestas correctas")
sum (prob)
prob4<-pbinom(4,size=n,prob=0.2)
#pbinom funci�n de la distribuci�n de probabilidad binomial
prob4

##############################################
# La probabilidad de que cuatro o menos preguntas sean contestadas correctamente al azar en un cuestionario de opci�n m�ltiple de doce preguntas es del 92,7%.
#�Cu�l es la probabilidad de que 2 � 3 preguntas sean respondidas correctamente?
  
sum(dbinom(2:3,n,0.2))
#dbinom entrega la densidad de probabilidad

# Encuentra la probabilidad de que un dado caiga en 6 no m�s de 2 veces si se lanza 8 veces?
p = 1/6
n = 8
k = 2
prob <- NULL
for(k in 0:2){
  prob <- c(prob,dbinom(k,n,p))
  prob
}
prob

sum (prob)
############################################
#La probabilidad de que un paciente se recupere de una rara enferme dad sangu�nea es de 0.4 
#Si se sabe que 15 personas contrajeron la enfermedad, �cu�l es la probabilidad de que
#a) sobrevivan al menos 10, 
#b) sobrevivan de 3 a 8, y 
#c) sobrevivan exactamente 5?

######## Inciso a
p = 0.4
n = 15
k = 10
prob <- NULL
for(k in 0:9){
  prob <- c(prob,dbinom(k,n,p))
  prob
}
prob

sum (prob)
a<-1-sum(prob)
a
###################### Inciso b
prob <- NULL
for(k in 0:8){
  prob <- c(prob,dbinom(k,n,p))
  prob
}
prob

sum (prob)

prob2 <- NULL
for(k in 0:2){
  prob2 <- c(prob2,dbinom(k,n,p))
  prob2
}
prob2

sum (prob2)

b<-sum (prob)-sum (prob2)
b
######### Inciso c
print(dbinom(5,n,p))


###########################################
print(media<-n*p)
print(varianza <- n*p*(1-p))
print(desviacion<-sqrt(varianza))

#Por el teorma de Chevyshev
min<-media + 2*varianza
max<-media - 2*varianza
# Teorema de Chebyshev
#El n�mero de pacientes que se recuperar�n, tienen probabilidad de 3/4 de estar entre 2 y 10 (min<x<max, 2<x<10)

############################
#Experimentos multinomiales
#La complejidad de las llegadas y las salidas de los aviones en un aeropuerto es tal que a
#menudo se utiliza la simulaci�n por computadora para modelar las condiciones "ideales".
#Para un aeropuerto espec�fi co que tiene tres pistas se sabe que, en el escenario ideal,
#las probabilidades de que las pistas individuales sean utilizadas por un avi�n comercial
#que llega aleatoriamente son las siguientes:
#  Pista 1: p1 = 2/9
#Pista 2: p2 = 1/6
#Pista 3: p3 = 11/18
#�Cu�l es la probabilidad de que 6 aviones que llegan al azar se distribuyan de la siguiente
#manera?
#  Pista 1: 2 aviones
#Pista 2: 1 avi�n
#Pista 3: 3 aviones

N <- 6  # N�mero de elementos
n <- 3
p1=2/9
p2=1/6
p3=11/18

numerador <- 1
for(i in 1:n)
  {i <- factorial(i)
  numerador=numerador*i
  }
i
numerador
factorial(N)

prob3<-(factorial(N)/numerador)*(p1^2)*(p2^1)*(p3^3)
prob3  

#####################################################################################################################
#Distribuci�n de Bernoulli
# n�mero de ensayos =1
#Una moneda se lanza 1 vez �Cu�l es la posibilidad de que caiga en una cara u otra?

dbinom(1,1,0.5)

#Ejemplo del dado. Probabilidad de que caiga en cualquier cara

dbinom(1,1,1/6)

#############################################################################################################
# Distribuci�n de Poisson

#Durante un experimento de laboratorio el n�mero promedio de part�culas radiactivas que pasan a trav�s de un contador 
#en un milisegundo es 4. �Cu�l es la probabilidad de que entren 6 part�culas al contador en un milisegundo dado?
dpois(6,4)
# lambda n�mero promedio de resultados por unidad de tiempo
# x n�mero de resultados que ocurren en un intervalo de tiempo dado o regi�n espec�ficos

# Si hay doce coches cruzando un puente por minuto en promedio, 
# encuentre la probabilidad de tener diecisiete o m�s coches cruzando el puente en un minuto en particular.
dpois(17,12)

# Si se tiene X~Poisson(x;3), calcula la probabilidad P(X=2),P(X=10),P(X=0),P(X=-1) y P(X=0.5)
dpois(2,3)
dpois(10,3)
dpois(0,3) 
dpois(-1,3)
dpois(0.5,3)

# El n�mero promedio de camiones-tanque que llega cada d�a a cierta ciudad portuaria es 10. Las instalaciones en el puerto pueden alojar a lo sumo 15 camiones-tanque por d�a. �Cu�l es la probabilidad de que en un d�a determinado lleguen m�s de 15 camiones y se tenga que rechazar algunos?
dpois(15,10)
#exactamente p para 15 camiones


prob <- NULL
for(k in 0:15){
  prob <- c(prob,dpois(k,10))
  prob
}
prob
sum(prob)

probabilidad<-1-sum(prob)
probabilidad

##########################################################3
# En cierta f�brica los accidentes ocurren con muy poca frecuencia. Se sabe que la probabilidad
#de un accidente en cualquier d�a dado es de 0.005, y que los accidentes son independientes
#entre s�.

#a) �Cu�l es la probabilidad de que en un d�a de cualquier periodo determinado de 400 d�as ocurra un accidente?
# b) �Cu�l es la probabilidad de que ocurra un accidente a lo sumo en tres d�as de tal periodo? (k<=3)


# lambda =np
lmadba= 0.005*400
dpois(1,2)

prob <- NULL
for(k in 0:3){
  prob <- c(prob,dpois(k,2))
  prob
}
prob
sum(prob)

#######################################################
#En un proceso de fabricaci�n donde se manufacturan productos de vidrio ocurren defectos
#o burbujas, lo cual ocasionalmente hace que la pieza ya no se pueda vender. Se sabe
#que, en promedio, 1 de cada 1000 art�culos producidos tiene una o m�s burbujas. �Cu�l
#es la probabilidad de que una muestra aleatoria de 8000 tenga menos de 7 art�culos con
#burbujas?
lambda<-8000*.001

prob <- NULL
for(k in 0:6){
  prob <- c(prob,dpois(k,lambda))
  prob
}
prob
sum(prob)
# comprarar resultados de dpois y dbinom

prob2 <- NULL
for(k in 0:6){
  prob2 <- c(prob2,dbinom(k,8000,.001))
  prob2
}
prob2
sum(prob2)


#####################################################################################################################

#Distribuci�n de probabilidad Hipergeom�trica
# Muestreos sin reemplazo

#Lotes con 40 componentes cada uno que contengan 3 o m�s defectuosos se consideran
#inaceptables. El procedimiento para obtener muestras del lote consiste en seleccionar 5
#componentes al azar y rechazar el lote si se encuentra un componente defectuoso. �Cu�l
#es la probabilidad de, que en la muestra, se encuentre exactamente un componente defectuoso,
#si en todo el lote hay 3 defectuosos?
m=40
n=5
k=3
x=1
dhyper(x, k,m-k,n)
#Es decir, 30.11% de probabilidad, el muestreo no es adecuado.
print(media<-n*k/m)
print(Varianza<-((m-n)/(m-1)*n*(k/m)*(1-k/m)))
print(a<-media+2*sqrt(Varianza))
print(b<-media-2*sqrt(Varianza))

#Esto es, al menos tres cuartas partes de las veces los 5 componentes incluir�n menos de 2
#defectuosos.

#############################################
# 50 edificios, 12 tienen violaciones al reglamento el�ctrico: Se toma una muestra de 10 edificios 
#�Cu�l es la probabilidad de que exactamente 3 de cada 10 edificios tengan violaciones al reglamento?

m=50
n=10
k=12
x=3
dhyper(3, 12, 50-12, 10)
dhyper(x,k,m-k,n)


#####################################
#D.P. Hipergeom�trica mulivariada
#Se usa un grupo de 10 individuos para un estudio de caso biol�gico. El grupo contiene 3
#personas con sangre tipo O, 4 con sangre tipo A y 3 con tipo B. �Cu�l es la probabilidad
#de que una muestra aleatoria de 5 contenga 1 persona con sangre tipo O, 2 personas con
#tipo A y 2 personas con tipo B?
librari(gtools)
N <- 10  # N�mero de elementos
n <- 5

a<-nrow(combinations(3,1))
b<-nrow(combinations(4,2))
c<-nrow(combinations(3,2))
d<-nrow(combinations(10,5))

print(a*b*c/d)

######################################################
## Distribuci�n binomial negativa

#En la serie de campeonato de la NBA (National Basketball Association), el equipo que
#gane 4 de 7 juegos ser� el ganador. Suponga que los equipos A y B se enfrentan en los
#juegos de campeonato y que el equipo A tiene una probabilidad de 0.55 de ganarle al
#equipo B.
#a) �Cu�l es la probabilidad de que el equipo A gane la serie en 6 juegos?
#  b) �Cu�l es la probabilidad de que el equipo A gane la serie?
#  c) Si ambos equipos se enfrentaran en la eliminatoria de una serie regional y el triunfador
#fuera el que ganara 3 de 5 juegos, �cu�l es la probabilidad de que el equipo A
#gane la serie?

#### inciso a
# par�metros (N-x,N,p)
dnbinom(2,4,0.55)
#inciso b

prob <- NULL
for(k in 4:7){
  prob <- c(prob,dnbinom((k-4),4,0.55))
  prob
}
prob
sum(prob)

### inciso c
dnbinom(2,4,0.55)
#inciso b

prob <- NULL
for(k in 3:5){
  prob <- c(prob,dnbinom((k-3),3,0.55))
  prob
}
prob
sum(prob)
##################################################3
#### D.P. binomial geom�trica
##### un �xito

#Se sabe que en cierto proceso de fabricaci�n uno de cada 100 art�culos, en promedio,
#resulta defectuoso. �Cu�l es la probabilidad de que el quinto art�culo que se inspecciona,
#en un grupo de 100, sea el primer defectuoso que se encuentre?
p=0.01
dgeom(5,0.01)

###################

#En "momentos ajetreados" un conmutador telef�nico est� muy cerca de su l�mite de
#capacidad, por lo que los usuarios tienen difi cultad para hacer sus llamadas. Ser�a interesante
#saber cu�ntos intentos ser�an necesarios para conseguir un enlace telef�nico.
#Suponga que la probabilidad de conseguir un enlace durante un momento ajetreado es
#p = 0.05. Nos interesa conocer la probabilidad de que se necesiten 5 intentos para enlazar
#con �xito una llamada.

p=0.05
dgeom(5,p)


############################################################################################################3
### Distribuci�n normal

#Dada una variable aleatoria X que tiene una distribuci�n normal con ?? = 50 y ?? = 10,
#calcule la probabilidad de que X tome un valor entre 45 y 62.

pnorm(62, mean = 50, sd = 10) - pnorm(45, mean = 50, sd = 10)


#######################################
#Dado que X tiene una distribuci�n normal con ?? = 300 y ?? = 50, calcule la probabilidad
#de que X tome un valor mayor que 362


pnorm(362, mean = 300, sd = 50, lower.tail = F)

######################################
#Sea Z una variable aleatoria normal con una media de 0 y una desviaci�n est�ndar igual a 1. Determinar:
  

#P(Z ??? a) = 0.5793.

# Debemos obtener el valor de a para que se cumpla la probabilidad, es decir: P(Z ??? a) = 0.5793. 
#Para ello, debemos usar la funci�n de quantiles:
  
qnorm(0.5793, mean = 0, sd = 1)
