data.frame()
spectrum <- matrix(nrow = 5, ncol = resol)

spectrum
for (i in 1:resol){
  spectrum[1,i] <- Radiation(v[i])
  rm(i)
}

data.frame(nrow = resol, ncol = 7)


rawdata <- data.frame(G0V_Up, G0V_Down, G2V_Up, G2V_Down, K0V_Up, K0V_Down, M0V_Up)


G0V_Up_RGB <- data.frame(G0V_Up_R, G0V_Up_G, G0V_Up_B)
