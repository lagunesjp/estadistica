help("Distributions")

# Distribuci�n de Bernoulli
# N�mero de ensayos repetidos id�nticos entre s�

# Distribuci�n binomial
# n ensayos de Bernoulli independientes entre s� 

####################

# Encuentra la probabilidad de que un dado caiga en 6 o m�s de 2 veces si se lanza 8 veces.
p = 1/6
n = 8
k = 2
prob <- NULL

for(k in 0:2){
  prob <- c(prob, dbinom(k, n, p))
  prob
}

sum(prob)

####################

# La probabilidad de que un paciente se recupere de una rara enfermedad sangu�nea es de 0.4.
# Si se sabe que 15 personas contrajeron la enfermedad, �cu�l es la probabilidad de que
# a) sobrevivan al menos 10?
# b) sobrevivan de 3 a 8?
# c) sobrevivan exactamente 5?

p = 0.4
n = 15
k = 10
prob <- NULL

for(k in 0:9){
  prob <- c(prob, dbinom(k, n, p))
  prob
}

a <- 1 - sum(prob)

a <- sum(dbinom(10:15, 15, 0.4))

b <- sum(dbinom(3:8, 15, 0.4))

c <- sum(dbinom(5, 15, 0.4))

# Por el teorema de Chevyshev

p <- 0.4
media <- n * p
varianza <- n * p * (1 - p)
desviacion <- sqrt(varianza)


min <- media - 2 * desviacion
max <- media + 2 * desviacion

min
max

# El n�mero de pacientes que se recuperar�n, tienen probabilidad de 3/4
# de estar entre 2 y 10 (min < x < max, 2 < x < 10)

####################

# Distribuci�n de Poisson

# Durante un expeerimiento de laboratorio, el n�mero promedio de part�culas radiactivas que pasan a trav�s de un contador
# en un milisegundo es 4. �Cu�l es la probabilidad de que entren 6 particulas al contador en un milisegundo dado?

dpois(6, 4)

# lamda n�mero promedio de resultados por unidad de tiempo
# x n�mero de resultados que ocurren en un intervalo de tiempo dado o regi�n espec�ficos

####################

# Si hay doce coches cruzando un puente por minuto en promedio,
# encuentre la probabilidad de tener diecisiete o m�s coches cruzando el puente en un minuto en particular.

ppois(17, 12)
ppois(16, 12, lower.tail = FALSE)

# Si se tiene X -> Poisson(x;3), calcula la probabilidad P(X = 2), P(X = 10), P(X = 0), P(X = -1), P(X = 0.5)
dpois(2, 3)
dpois(10, 3)
dpois(0, 3)
dpois(-1, 3)
dpois(0.5, 3)

####################

# El n�mero dpromedio de camiones que llega cada d�a a cierta ciudad portuaria es 10 y a lo mucho aloja 15 por d�a.
# �Cu�l e sla probabilidad de que en un d�a determinado lleguen m�s de 15 camiones y se tenga que rechazar algunos?

1 - sum(dpois(0:15, 10))

# O bien, 
sum(ppois(15, 10, lower.tail = FALSE))













