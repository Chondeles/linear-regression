#calcul élémentaire
20+15
sqrt(16)

#Les objets de R

#Vecteur : un ensemble de données de même nature 
#on peut définir un vecteur de plusieurs manière:
x<-c(1,23,34,4)
2:10
seq(2,10, by=2)
rep(1,5)



#Matrices
#la fonction matrix permet de definir des matrices
m<-matrix(1:4,ncol = 2)
m
#la position d'un element dans une matrice
m[2,2]
#les calculs usuels sur les matrices
det(m)
solve(m)
t(m)
eigen(m)

n<-matrix(5:8,ncol = 2)
n
m*n #produit terme à terme : hadamart
m%*%n #produit matriciel

#listes
#une liste est un objet hétérogène
mylist<-list(vector=rep(1:5),mat=matrix(1:8,ncol = 2))
mylist
length(mylist)



#Les dataframes sont des listes particulieres
#L'objet permettant de stocker des tableaux de données

name<-c("Youness","Fatima","Khalid","Bouchra","Mohammed")
sexe<-factor(c("M","F","M","F","M"))
size<-c(180,145,169,125,189)
data<-data.frame(name,sexe,size)
summary(data)


#Exercice 4
#1.1
x=5
x
S1<-c(4,6,2,10,21,25,30,10)
S1
S1[2]=10
S1
S1[S1==10] = 100
S1
mean(S1)
S2<-c(12,10,NA,12,11,19,9,10)
mean(S2,na.rm = TRUE)

#1.2

list<-c(5,7,12,1,5,9,4,0,0,0,14,4,22,2,6,10,5)
moy<-c(mean(list))
moy
var(list)
Res<-c(sd(list))
Res
Res<-c(max(list) - min(list))
Res
q<-c(quantile(list))
q
q1<-(quantile(list, probs = 0.25))
q1
q3<-(quantile(list, probs = 0.75))
q3

quantile(list, probs = 0:10/10)
quantile(list, probs = 0.3)
boxplot(list)
hist(list)
barplot(list)
