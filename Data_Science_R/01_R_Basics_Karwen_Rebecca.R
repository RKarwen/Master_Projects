#Aufgabe 1 Überprüfen Sie, welcher Ordner aktuell als Working Directory gesetzt ist. Setzen Sie Ihr Working Directory nun auf den Ordner, in dem Sie arbeiten möchten.

getwd()
setwd("D:/Uni/Master/Data Science")

#Aufgabe 2

#Berechnen Sie die Summe aus 10 und 15.
10 + 5

#Berechnen Sie die Differenz aus 10 und 15.
10 - 5

#Berechnen Sie 2 hoch 8 geteilt durch 45.
(2^8) / 45

#Berechnen Sie die Quadratwurzel aus 101 und multiplizieren Sie das Ergebnis mit pi.
sqrt(101) * pi

#Aufgabe 3

# Erstellen Sie einen Vektor (char_vec), der die folgenden Bestandteile enth?lt: data, science, is, so, much, fun
char_vec <- c("data", "science", "is", "so"," much", "fun")

#Berechnen Sie die Anzahl der Elemente im erstellten Vektor mithilfe einer in R vorliegenden Funktion.
length(char_vec)

#Ueberpruefen Sie mithilfe einer geeigneten Funktion, welchen Datentyp der erstellte Vektor hat und geben Sie diesen an.
class(char_vec)
#Datentyp ist character

#Erweitern Sie den erstellten Vektor (char_vec) um die folgenden Bestandteile: and, I, love, R, programming
char_vec <-c(char_vec, c("and","I", "love", "R", "programming"))

#Erstellen Sie einen Vektor (no_vec) der die Zahlen von 1 bis 11 enthaelt.
no_vec <- c(1:11)

#Kombinieren Sie nun beide erstellten Vektoren (char_vec und no_vec) zu einem DataFrame (myDf). Achten Sie darauf, dass der Vektor, der die Zahlen enth?lt der Erste Vektor des DataFrames ist.
myDf <- data.frame(char_vec, no_vec)

#Geben Sie die erste Spalte des erstellten DataFrames (myDf) mithilfe einer R Funktion aus.
library(tidyverse)
select(myDf, char_vec)
#oder
select_first <- function(df){
  df[ ,1]
}
select_first(myDf)

#Geben Sie die zehnte Zeile des DataFrames (myDf) aus
myDf[10,]

#Geben Sie das Element aus der sechsten Zeile in der zweiten Spalte aus.
myDf[6, 2]


#Aufgabe 4

# Importieren Sie den heart Datensatz in R als 'heart_data'.
heart_data <- read.csv("01 R Basic Tasks heart.csv")

#Mit welcher Funktion l?sst sich ?berpr?fen, ob die Daten korrekt geladen wurden? Wenden Sie die Funktion an.
head(heart_data)

# Geben Sie alle Attributsnamen mithilfe eines einzigen Befehls aus.
str(heart_data)

# Welchen Datentyp hat das Attribut "output"?
str(heart_data$output)
#output an den Datentyp int

#Wie viele Zeilen und wie viele Spalten umfasst der heart Datensatz?
# 303 Zeilen und 14 Spalten 

#Geben Sie mithilfe einer einzigen Funktion die Verteilungen aller Attribute aus. Nennen Sie die Funktion.
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}
sapply(heart_data, basics)

#Wie hoch ist dabei der Mittelwert des Attributs "trtbps"?
mean(heart_data$trtbps)