par(mfrow=c(1.5,1)) 
theme_gray()

plot(Energy,type = "l",
     xlab= "wavelength[nm]",
     ylab= "Spectral Energy Density[kJ/m^3nm]",
     col = "black",
     ylim = range(0,28000),
#    axes=F,
     main = "Radiation Distribution as spectrum in G2V_First")



#-------------------------------------------------------------------------------
# G0V_Up_X 
# G0V_Up_Y 
# G0V_Up_Z 



par(mfrow=c(1.5,1)) 
theme_gray()

plot(Energy,type = "l",
     xlab= "wavelength[nm]",
     ylab= "Spectral Energy Density[kJ/m^3nm]",
     col = "black",
     ylim = range(0,28000),
     #    axes=F,
     main = "Radiation Distribution as spectrum in G0V_First")




par(new=TRUE)
plot(G0V_Up_X,
     type = "l",
     col = "Red",
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)



MAX_y <- 0
MAX_y <- max(G0V_Up_X,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G0V_Up_X[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(G0V_Up_Y,
     type = "l",
     col = "Green" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(G0V_Up_Y,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G0V_Up_Y[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(G0V_Up_Z,
     type = "l",
     col = "Blue" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(G0V_Up_Z,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G0V_Up_Z[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



#-------------------------------------------------------------------------------
# G0V_Down_X 
# G0V_Down_Y 
# G0V_Down_Z 



par(mfrow=c(1.5,1)) 
theme_gray()

plot(Energy,type = "l",
     xlab= "wavelength[nm]",
     ylab= "Spectral Energy Density[kJ/m^3nm]",
     col = "black",
     ylim = range(0,28000),
     #    axes=F,
     main = "Radiation Distribution as spectrum in G0V_Last")




par(new=TRUE)
plot(G0V_Down_X,
     type = "l",
     col = "Red",
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)



MAX_y <- 0
MAX_y <- max(G0V_Down_X,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G0V_Down_X[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(G0V_Down_Y,
     type = "l",
     col = "Green" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(G0V_Down_Y,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G0V_Down_Y[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(G0V_Down_Z,
     type = "l",
     col = "Blue" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(G0V_Down_Z,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G0V_Down_Z[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



#-------------------------------------------------------------------------------
# G2V_Up_X 
# G2V_Up_Y 
# G2V_Up_Z 



par(mfrow=c(1.5,1)) 
theme_gray()

plot(Energy,type = "l",
     xlab= "wavelength[nm]",
     ylab= "Spectral Energy Density[kJ/m^3nm]",
     col = "black",
     ylim = range(0,28000),
     #    axes=F,
     main = "Radiation Distribution as spectrum in G2V_First")




par(new=TRUE)
plot(G2V_Up_X,
     type = "l",
     col = "Red",
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)



MAX_y <- 0
MAX_y <- max(G2V_Up_X,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G2V_Up_X[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(G2V_Up_Y,
     type = "l",
     col = "Green" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(G2V_Up_Y,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G2V_Up_Y[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(G2V_Up_Z,
     type = "l",
     col = "Blue" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(G2V_Up_Z,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G2V_Up_Z[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



#-------------------------------------------------------------------------------
# G2V_Down_X 
# G2V_Down_Y 
# G2V_Down_Z 



par(mfrow=c(1.5,1)) 
theme_gray()

plot(Energy,type = "l",
     xlab= "wavelength[nm]",
     ylab= "Spectral Energy Density[kJ/m^3nm]",
     col = "black",
     ylim = range(0,28000),
     #    axes=F,
     main = "Radiation Distribution as spectrum in G2V_Last")




par(new=TRUE)
plot(G2V_Down_X,
     type = "l",
     col = "Red",
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)



MAX_y <- 0
MAX_y <- max(G2V_Down_X,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G2V_Down_X[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(G2V_Down_Y,
     type = "l",
     col = "Green" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(G2V_Down_Y,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G2V_Down_Y[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(G2V_Down_Z,
     type = "l",
     col = "Blue" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(G2V_Down_Z,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(G2V_Down_Z[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)





#-------------------------------------------------------------------------------
# K0V_Up_X 
# K0V_Up_Y 
# K0V_Up_Z 



par(mfrow=c(1.5,1)) 
theme_gray()

plot(Energy,type = "l",
     xlab= "wavelength[nm]",
     ylab= "Spectral Energy Density[kJ/m^3nm]",
     col = "black",
     ylim = range(0,28000),
     #    axes=F,
     main = "Radiation Distribution as spectrum in K0V_First")




par(new=TRUE)
plot(K0V_Up_X,
     type = "l",
     col = "Red",
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)



MAX_y <- 0
MAX_y <- max(K0V_Up_X,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(K0V_Up_X[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(K0V_Up_Y,
     type = "l",
     col = "Green" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(K0V_Up_Y,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(K0V_Up_Y[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(K0V_Up_Z,
     type = "l",
     col = "Blue" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(K0V_Up_Z,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(K0V_Up_Z[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



#-------------------------------------------------------------------------------
# K0V_Down_X 
# K0V_Down_Y 
# K0V_Down_Z 



par(mfrow=c(1.5,1)) 
theme_gray()

plot(Energy,type = "l",
     xlab= "wavelength[nm]",
     ylab= "Spectral Energy Density[kJ/m^3nm]",
     col = "black",
     ylim = range(0,28000),
     #    axes=F,
     main = "Radiation Distribution as spectrum in K0V_Last")




par(new=TRUE)
plot(K0V_Down_X,
     type = "l",
     col = "Red",
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)



MAX_y <- 0
MAX_y <- max(K0V_Down_X,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(K0V_Down_X[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(K0V_Down_Y,
     type = "l",
     col = "Green" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(K0V_Down_Y,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(K0V_Down_Y[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(K0V_Down_Z,
     type = "l",
     col = "Blue" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(K0V_Down_Z,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(K0V_Down_Z[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)





#-------------------------------------------------------------------------------
# M0V_Up_X 
# M0V_Up_Y 
# M0V_Up_Z 



par(mfrow=c(1.5,1)) 
theme_gray()

plot(Energy,type = "l",
     xlab= "wavelength[nm]",
     ylab= "Spectral Energy Density[kJ/m^3nm]",
     col = "black",
     ylim = range(0,28000),
     #    axes=F,
     main = "Radiation Distribution as spectrum in M0V_First")




par(new=TRUE)
plot(M0V_Up_X,
     type = "l",
     col = "Red",
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)



MAX_y <- 0
MAX_y <- max(M0V_Up_X,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(M0V_Up_X[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(M0V_Up_Y,
     type = "l",
     col = "Green" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(M0V_Up_Y,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(M0V_Up_Y[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



par(new=TRUE)
plot(M0V_Up_Z,
     type = "l",
     col = "Blue" ,
     axes = F,
     ann=F,
     #ylim= range(0,2.0)
     ylim = range(0,28000)
)


MAX_y <- 0
MAX_y <- max(M0V_Up_Z,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(M0V_Up_Z[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 5), pos=1)



#-------------------------------------------------------------------------------
















par(new=TRUE)
plot(RedColor,
     type = "l",
     col = "Red" ,
     axes=F,
     #ylim= range(0,2.0)
)

par(new=TRUE)
plot(G2V_Up_R,
     col = "red" ,
     #ylim= range(0,2.0)
     )
par(new=TRUE)
plot(G0V_Up_G,
     col = "green",
     #ylim= range(0,2.0)
)
par(new=TRUE)
plot(G0V_Up_B,
     col = "blue",
     #ylim= range(0)
)















MAX_y <- max(Energy,na.rm = "true")

i <- 0
MAX_x <- 0
while (1) {
  i <- i + 1
  if(Energy[i] == MAX_y){
    MAX_x <- i
    break
  }
}

abline(h = MAX_y, v = MAX_x, lty = 3)

text(MAX_x, MAX_y-2000, labels = "Maximum", pos=3)

text(MAX_x,0, labels = MAX_x, pos=3)
text(MAX_x, MAX_y-2000, labels = round(MAX_y, digits = 8), pos=1)









G0V_Up_X 
G0V_Up_Y 
G0V_Up_Z 
G0V_Down_X 
G0V_Down_Y 
G0V_Down_Z 
G2V_Up_X 
G2V_Up_Y 
G2V_Up_Z 
G2V_Down_X 
G2V_Down_Y 
G2V_Down_Z 
K0V_Up_X 
K0V_Up_Y 
K0V_Up_Z 
K0V_Down_X
K0V_Down_Y
K0V_Down_Z
M0V_Up_X 
M0V_Up_Y 
M0V_Up_Z 
















#abline(a="MAX_y", b= "0", lty ="2")
#?abline



# par(mfrow=c(1.5,1)) 
# 
# plot(Gaussian(i, 1.056, 5998, 379, 310) ,type = "o",
#      xlab= "wavelength[nm]",
#      ylab= "Spectral Energy Density[kJ/m^3nm]",
#      col = "green",
#      main = "body Radiation Distribution as non-helimwoltz spectrum in ratina Bacteriorhodopsin")