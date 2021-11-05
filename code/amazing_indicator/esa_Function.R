irradical <- function(Lamdha){
  1 + (Lamdha*2)
}

Radiation(3)
#---------------------

Lamdha <-1
Thickness <-1
Rho <- 100
Temparature <- 5772
#Radiation <- function(Lamdha, Temparature = 5772){
#   
# }

#----------------------------

Plank <- ((6.62607004) * (10^(-34))) #m^2 * kg/s
myLamdha <- 1                          #Hz
Light <- 299792458                   #m/s
myTemparature <- 5772              #K
Boltzmann <- (1.3806488*10^(-23))    #J k^(-1)
Wien <- 2.897771955*(10^(-3))       #mK
myDensity <- 100
myThickness <- 1
ThatPoint <- ((Wien*(10^9))/(Temparature)-400)

        
#-----------------------------


Physic <- function(a,b){
  exp_a <- exp(a)
  exp_b <- exp(b)
  exp_irr <- exp((Plank*Light)/(a*Boltzmann*myTemparature))
  c(exponant_a = exp_a, exponant_b = exp_b, irradicEqation = exp_irr)
}

#---------------------
# 
# Physic(1,myTemparature)
# 
# -----------------------



# 
# ThatPoint <- ((Wien*(10^9))/(myTemparature)-400)
# 
# One <- ((2*Plank*Light*(10^45))/(Lamdha^5))
# 
# two <- ((1)/(exp((Plank*Light*(10^9))/(Lamdha*Boltzmann*myTemparature))-1))
# 
# exp_three <- (-1/2)*(((Lamdha)-((Wien*(10^9))/myTemparature))/((((ThatPoint)/(1.96))^2)*(sqrt(2*pi))))
# 
# three <- ((1)-(((1)/((((ThatPoint)/(1.96))^2)*sqrt(2*pi)))*exp(exp_three)))
# 
# 
# 
# 
# 








# ------------------------------------
# 
# one <-1
# two <-1
# Three <-1

# Radiation <- function(Lamdha, Temparature = myTemparature) {
#   
#   ThatPoint <- ((Wien*(10^9))/(Temparature)-400)
#   
#   one <- ((2*Plank*Light*(10^45))/(Lamdha^5))
#   
#   two <- ((1)/(exp((Plank*Light*(10^9))/(Lamdha*Boltzmann*Temparature))-1))
#   
#   exp_three <- (-1/2)*((((Lamdha)-((Wien*(10^9))/Temparature))/(((ThatPoint)/(1.96))*(sqrt(2*pi))))^2)
#   
#   three <- ((1)-(((1)/((((ThatPoint)/(1.96)))*sqrt(2*pi)))*exp(exp_three)))
#   
#   return(one*two*three) 
# }

-----------------------------



Radiation <- function(Lamdha, Temparature = myTemparature, Thickness = myThickness, Rho = myDensity){
  
  
  
  
  
  
  one <- (( (2*(Plank)*(Light^2))*(10^36))/(Lamdha^5))
  
  two <- ((1)/((exp((Plank*Light*(10^9))/(Lamdha*Boltzmann*Temparature))-1)))
  
  three_exp <- ((-1/2)*((      (Lamdha-((Wien*(10^9))/(Temparature)))/(((ThatPoint)/(1.96))))        )^2)
  
  three <- (1) - ((((Thickness*Rho))/( (((ThatPoint)/(1.96))*sqrt(2*pi)) )) * (exp(three_exp)))
  
   return((one)*(two)*(three))
  
  
  
   
 
  
  
  

  

  
  
  
  rm(Temparature,Lamdha,Thickness,Rho)
  
  
}























Radiation(1:400)
 
Radiation(0.0000003)
rm(one, two, Three)


(Lamdha)-((Wien*(10^9))/myTemparature)


Energy <-
 red <- 100
 blue <- 2000
 resol <- 1500
 v <- seq( from=red, to=blue, length.out=resol )

rm(v)
# for (i in 1:resol){
#   Energy[i] <- Radiation(((v[i])*10^(-9)))
#
# }


i <-1
# 태양의 남는에너지그래프
 for (i in 1:resol){
   Energy[i] <- Radiation(i)
 }
   rm(i)
 

i <-1
 
for (i in 1:resol){
  Energy[i] <- Gaussian(10*i, 1.056, 5998, 379, 310) +
    Gaussian(10*i, 0.362, 4420, 160, 267) +
    Gaussian(10*i, -0.065, 5011, 204, 262)

}



#안녕 나는 시진핑 주석이야
#너느 말이야 그래픈데 말이야 테스튼데 말이ㅑ Radiation 그래프에 RGB 적용한거 만들거임

# 내게 주어진것
# 태양 플랑크 곡선
# 외계 광합성 생명체(각기 다른 모항성 분광형의 생명체)7종류의 흡광도 정규분포
# 그러면 해야될 것
# 지구로 가져온다 <-
#   받는 복사에너지가 태양으로 바뀐다
# 알고싶은것 < - 색깔
# 색깔 <- 입사광 - 흡수광
# (입사광 - 흡수광) <- (입사광 백터 * (1 - 흡수광 백터))
# L_mono[] <- ((입사광 백터)*(1- (흡수광 백터)))
# 최종 반사광 백터 <- L_mono[]
# 여기까지가 현재 지구에 가져온 상태
# 근데 색깔을 알고싶다?
# 우리 눈에 적용되는 RGB곡선을 적용(Rec.2020)
# L_R[] <- ((L_Mono[])*(1-(RedColor[])))
# L_G[] <- ((L_Mono[])*(1-(GreenColor[])))
# L_B[] <- ((L_Mono[])*(1-(BlueColor[])))
# 
# 여기까지 했으면 완성, 
# 하나의 분광성에 살던 외계행성의 광합성 생명체를 지구에 끌고와서 RGB를 적용함
# 이제 색을 어떻게 보지?
# 이녀석은 어떤 색을 띌까
# 가장 피크값이 높은 색?
# 
# 한참 뒤
# 
# 아 생각을 해보니 이러면 될 듯
# 적용한 RGB그래프의 함숫값은 각각 작용하는 원추세포의 발현도임
# 어차피 그래프의 식에 적용파장은 계산되어 들어가있으니
# 우리는 파장은 신경 끄고 해당 RGB그래프의 함숫값만 보면 됨
# 그러니까 다시말해 해당 그래프를 적분하면 나오는 값이
# 해당 색깔의 상대적 발현 정도,
# 애초에 Rec.2020은 상대색공간이니까 비율 계산해서 RGB로 내놓으면 됨







RedColor <- 1  #누름에 주의!

i <-1

Rad_R <- 1
Rad_G <- 1
Rad_B <- 1



for (i in 1:resol){
  Rad_R[i] <- (Radiation(i)) * (RedColor[i])
  Rad_G[i] <- (Radiation(i)) * (GreenColor[i])
  Rad_B[i] <- (Radiation(i)) * (BlueColor[i])
}
rm(i)


Rad_R[]
Rad_G[]
Rad_B[]


RedColor[]
GreenColor[]
BlueColor[]








 
 
Rad_REnergyre

for (i in 1:1500) {
 # print(i)
  print(Energy[i])
}


rm(i)


RedColor <- 0
GreenColor <- 0
BlurColor <- 0

i <- 0
for (i in 1:resol){
  RedColor[i] <- spectrum[2,i]
  
}
i <- 0

GreenColor <- 0

for (i in 1:resol){
  GreenColor[i] <- spectrum[3,i]
  
}
i <- 0

BlueColor <- 0

for (i in 1:resol){
  BlueColor[i] <- spectrum[4,i]
  
}




#rm(Radiation)
#na.rm







Gaussian <- function(x, a, m, sig_1, sig_2){
  if(x<m){
    t <- (x-m)/(sig_1)
  } else{
    t <- (x-m)/(sig_2)
  }
  return(a*exp(-(t*t)/2))

}
i <- 0
#color R dist get rid on data set 
for (i in 1:resol){
  spectrum[2,i] <- 
    Gaussian(10*i, 1.056, 5998, 379, 310) +
    Gaussian(10*i, 0.362, 4420, 160, 267) +
    Gaussian(10*i, -0.065, 5011, 204, 262)

}
rm(i)
i <- 0
#color G dist get rid on data set
for (i in 1:resol){
  spectrum[3,i] <- 
    Gaussian(10*i, 0.821, 5688, 469, 405) +
    Gaussian(10*i, 0.286, 5309, 163, 311) 

}
rm(i)
i <- 0
#color B dist get rid on data set
for (i in 1:resol){
  spectrum[4,i] <- 
    Gaussian(10*i, 1.217, 4370, 118, 360) +
    Gaussian(10*i, 0.681, 4590, 260, 138) 

}
rm(i)

mean <-0
sig <- 1


Distribution <- function(x,mean,sig){
  return(((1)/((sig)*sqrt(2*pi)))*exp((-1/2)*(((x-mean)/(sig))^2)))
}

G0V_m <-486.34
G0V_s <-44.052



# G0V_Up <- 0
# G0V_Down <-0
# G2V_Up <-0
# G2V_Down <-0
# K0V_Up<-0
# K0V_Down <-0
# M0V_Up <-0

i <- 0

for (i in 1:resol){
  G0V_Up[i] <- Distribution(i,486.34,44.052)
}
i <- 0

for (i in 1:resol){
  G0V_Down[i] <- Distribution(i,604.93, 16.459)
}
i <- 0

for (i in 1:resol){
  G2V_Up[i] <- Distribution(i,499.65, 50.844)
}
i <- 0

for (i in 1:resol){
  G2V_Down[i] <- Distribution(i,629.87, 15.591)
}
i <- 0

for (i in 1:resol){
  K0V_Up[i] <- Distribution(i,547.25, 75.127)
}
i <- 0

for (i in 1:resol){
  K0V_Down[i] <- (Distribution(i,423.177, 11.825)) + (Distribution(i,710.85, 8.3424))
}
i <- 0

for (i in 1:resol){
  M0V_Up[i] <- Distribution(i,749.09, 178.10)
}
i <- 0



#--------------------------------------



j <- 0
i <- 0

# 
# while(i<4){
#   i<- i + 1
#   while(1){
#     j<- j + 1
#     rawdata[j,i]
#     if(J == resol)break
#     j <- 0
#   }
#   if
# }



G0V_Up_R<-0
G0V_Up_G<-0
G0V_Up_B<-0





while (1) {
  i <- 0
  i <- i + 1
  G0V_Up_R[i] <- ((RedColor[i])*(rawdata[i,1]))
  if(i == resol){break}
  
}
i <- 0

while (1) {
  i <- i + 1
  G0V_Up_R[i] <- ((GreenColor[i])*(rawdata[i,1]))
  if(i == resol){break}
  
}
i <- 0

while (1) {
  i <- i + 1
  G0V_Up_R[i] <- ((BlueColor[i])*(rawdata[i,1]))
  if(i == resol){break}
  
}
i <- 0




i <- 0
while(1){
  #tlqkf 초기화가 여기있으니까 안되지 병신아
  i <- i + 1
  G0V_Up_R[i] <- (RedColor[i]) * (rawdata[i,1])
  G0V_Up_G[i] <- (GreenColor[i]) * (rawdata[i,1])
  G0V_Up_B[i] <- (BlueColor[i]) * (rawdata[i,1])
  if(i == resol){break}
}






#각 외계식물을 태양의 남는 에너지에 대입, 반사광 반들어냄


G0V_Up_Mono <- 0
G0V_Down_Mono <- 0
G2V_Up_Mono <- 0
G2V_Down_Mono <- 0
K0V_Up_Mono <- 0
K0V_Down_Mono <- 0
M0V_Up_Mono <- 0

i <- 0
for (i in 1:resol){
  G0V_Up_Mono[i] <- (Energy[i])*(1 - (G0V_Up[i]))
  G0V_Down_Mono[i] <- (Energy[i])*(1 - (G0V_Down[i]))
  G2V_Up_Mono[i] <- (Energy[i])*(1 - (G2V_Up[i]))
  G2V_Down_Mono[i] <- (Energy[i])*(1 - (G2V_Down[i]))
  K0V_Up_Mono[i] <- (Energy[i])*(1 - (K0V_Up[i]))
  K0V_Down_Mono[i] <- (Energy[i])*(1 - (K0V_Down[i]))
  M0V_Up_Mono[i] <- (Energy[i])*(1 - (M0V_Up[i]))

  
  
}

rm(i)



G0V_Up_X <- 0
G0V_Up_Y <- 0
G0V_Up_Z <- 0
G0V_Down_X <- 0
G0V_Down_Y <- 0
G0V_Down_Z <-0
G2V_Up_X <-0
G2V_Up_Y <-0
G2V_Up_Z <-0
G2V_Down_X <-0
G2V_Down_Y <-0
G2V_Down_Z <-0
K0V_Up_X <-0
K0V_Up_Y <-0
K0V_Up_Z <-0
K0V_Down_X <-0
K0V_Down_Y <-0
K0V_Down_Z <-0
M0V_Up_X <-0
M0V_Up_Y <-0
M0V_Up_Z <-0






i <- 0
for (i in 1:resol){
  
  G0V_Up_X[i] <- ((G0V_Up_Mono[i]) * (RedColor[i]))
  G0V_Up_Y[i] <- ((G0V_Up_Mono[i]) * (GreenColor[i]))
  G0V_Up_Z[i] <- ((G0V_Up_Mono[i]) * (BlueColor[i]))
  G0V_Down_X[i] <- ((G0V_Down_Mono[i]) * (RedColor[i]))
  G0V_Down_Y[i] <- ((G0V_Down_Mono[i]) * (GreenColor[i]))
  G0V_Down_Z[i] <- ((G0V_Down_Mono[i]) * (BlueColor[i]))
  G2V_Up_X[i] <- ((G2V_Up_Mono[i]) * (RedColor[i]))
  G2V_Up_Y[i] <- ((G2V_Up_Mono[i]) * (GreenColor[i]))
  G2V_Up_Z[i] <- ((G2V_Up_Mono[i]) * (BlueColor[i]))
  G2V_Down_X[i] <- ((G2V_Down_Mono[i]) * (RedColor[i]))
  G2V_Down_Y[i] <- ((G2V_Down_Mono[i]) * (GreenColor[i]))
  G2V_Down_Z[i] <- ((G2V_Down_Mono[i]) * (BlueColor[i]))
  K0V_Up_X[i] <- ((K0V_Up_Mono[i]) * (RedColor[i]))
  K0V_Up_Y[i] <- ((K0V_Up_Mono[i]) * (GreenColor[i]))
  K0V_Up_Z[i] <- ((K0V_Up_Mono[i]) * (BlueColor[i]))
  K0V_Down_X[i] <- ((K0V_Down_Mono[i]) * (RedColor[i]))
  K0V_Down_Y[i] <- ((K0V_Down_Mono[i]) * (GreenColor[i]))
  K0V_Down_Z[i] <- ((K0V_Down_Mono[i]) * (BlueColor[i]))
  M0V_Up_X[i] <- ((M0V_Up_Mono[i]) * (RedColor[i]))
  M0V_Up_Y[i] <- ((M0V_Up_Mono[i]) * (GreenColor[i]))
  M0V_Up_Z[i] <- ((M0V_Up_Mono[i]) * (BlueColor[i]))

  
  
  
}

rm(i)











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




#적분 모듈을 만들어볼거에요, 물론 구분구적법으로


Integral_G0V_Up_X
Integral_G0V_Up_Y
Integral_G0V_Up_Z
Integral_G0V_Down_X
Integral_G0V_Down_Y
Integral_G0V_Down_Z
Integral_G2V_Up_X
Integral_G2V_Up_Y
Integral_G2V_Up_Z
Integral_G2V_Down_X
Integral_G2V_Down_Y
Integral_G2V_Down_Z
Integral_k0V_Up_X
Integral_K0V_Up_Y
Integral_K0V_Up_Z
Integral_K0V_Down_X
Integral_K0V_Down_Y
Integral_K0V_Down_Z
Integral_M0V_Up_X
Integral_M0V_Up_Y
Integral_M0V_Up_Z
















Integral_G0V_Up_X <- 0
Integral_G0V_Up_Y <- 0
Integral_G0V_Up_Z <- 0
Integral_G0V_Down_X <- 0
Integral_G0V_Down_Y <- 0
Integral_G0V_Down_Z <- 0
Integral_G2V_Up_X <- 0
Integral_G2V_Up_Y <- 0
Integral_G2V_Up_Z <- 0
Integral_G2V_Down_X <- 0
Integral_G2V_Down_Y <- 0
Integral_G2V_Down_Z <- 0
Integral_K0V_Up_X <- 0
Integral_K0V_Up_Y <- 0
Integral_K0V_Up_Z <- 0
Integral_K0V_Down_X <- 0
Integral_K0V_Down_Y <- 0
Integral_K0V_Down_Z <- 0
Integral_M0V_Up_X <- 0
Integral_M0V_Up_Y <- 0
Integral_M0V_Up_Z <- 0






i <- 0

for(i in 1:resol){
  
  Integral_G0V_Up_X <-  ((Integral_G0V_Up_X) + (G0V_Up_X[i]))
  Integral_G0V_Up_Y <-  ((Integral_G0V_Up_Y) + (G0V_Up_Y[i]))
  Integral_G0V_Up_Z <-  ((Integral_G0V_Up_Z) + (G0V_Up_Z[i]))
  Integral_G0V_Down_X <-  ((Integral_G0V_Down_X) + (G0V_Down_X[i]))
  Integral_G0V_Down_Y <-  ((Integral_G0V_Down_Y) + (G0V_Down_Y[i]))
  Integral_G0V_Down_Z <-  ((Integral_G0V_Down_Z) + (G0V_Down_Z[i]))
  Integral_G2V_Up_X <-  ((Integral_G2V_Up_X) + (G2V_Up_X[i]))
  Integral_G2V_Up_Y <-  ((Integral_G2V_Up_Y) + (G2V_Up_Y[i]))
  Integral_G2V_Up_Z <-  ((Integral_G2V_Up_Z) + (G2V_Up_Z[i]))
  Integral_G2V_Down_X <-  ((Integral_G2V_Down_X) + (G2V_Down_X[i]))
  Integral_G2V_Down_Y <-  ((Integral_G2V_Down_Y) + (G2V_Down_Y[i]))
  Integral_G2V_Down_Z <-  ((Integral_G2V_Down_Z) + (G2V_Down_Z[i]))
  Integral_K0V_Up_X <-  ((Integral_K0V_Up_X) + (K0V_Up_X[i]))
  Integral_K0V_Up_Y <-  ((Integral_K0V_Up_Y) + (K0V_Up_Y[i]))
  Integral_K0V_Up_Z <-  ((Integral_K0V_Up_Z) + (K0V_Up_Z[i]))
  Integral_K0V_Down_X <-  ((Integral_K0V_Down_X) + (K0V_Down_X[i]))
  Integral_K0V_Down_Y <-  ((Integral_K0V_Down_Y) + (K0V_Down_Y[i]))
  Integral_K0V_Down_Z <-  ((Integral_K0V_Down_Z) + (K0V_Down_Z[i]))
  Integral_M0V_Up_X <-  ((Integral_M0V_Up_X) + (M0V_Up_X[i]))
  Integral_M0V_Up_Y <-  ((Integral_M0V_Up_Y) + (M0V_Up_Y[i]))
  Integral_M0V_Up_Z <-  ((Integral_M0V_Up_Z) + (M0V_Up_Z[i]))

  
}


Integral_G0V_Up_X <- (Integral_G0V_Up_X)/(resol)
Integral_G0V_Up_Y <- (Integral_G0V_Up_Y)/(resol)
Integral_G0V_Up_Z <- (Integral_G0V_Up_Z)/(resol)
Integral_G0V_Down_X <- (Integral_G0V_Down_X)/(resol)
Integral_G0V_Down_Y <- (Integral_G0V_Down_Y)/(resol)
Integral_G0V_Down_Z <- (Integral_G0V_Down_Z)/(resol)
Integral_G2V_Up_X <- (Integral_G2V_Up_X)/(resol)
Integral_G2V_Up_Y <- (Integral_G2V_Up_Y)/(resol)
Integral_G2V_Up_Z <- (Integral_G2V_Up_Z)/(resol)
Integral_G2V_Down_X <- (Integral_G2V_Down_X)/(resol)
Integral_G2V_Down_Y <- (Integral_G2V_Down_Y)/(resol)
Integral_G2V_Down_Z <- (Integral_G2V_Down_Z)/(resol)
Integral_K0V_Up_X <- (Integral_K0V_Up_X)/(resol)
Integral_K0V_Up_Y <- (Integral_K0V_Up_Y)/(resol)
Integral_K0V_Up_Z <- (Integral_K0V_Up_Z)/(resol)
Integral_K0V_Down_X <- (Integral_K0V_Down_X)/(resol)
Integral_K0V_Down_Y <- (Integral_K0V_Down_Y)/(resol)
Integral_K0V_Down_Z <- (Integral_K0V_Down_Z)/(resol)
Integral_M0V_Up_X <- (Integral_M0V_Up_X)/(resol)
Integral_M0V_Up_Y <- (Integral_M0V_Up_Y)/(resol)
Integral_M0V_Up_Z <- (Integral_M0V_Up_Z)/(resol)


rm(i)




























