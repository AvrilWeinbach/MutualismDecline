## Manuscript figure 2 representing  trade-off strength for s = (0.5;0.75;1;2;3)


###################################################
##Functions used to draw the plot

# critical value for epsilon:
ecl = function(aP, aN, gP, gN){
  sqrt((aP*aN)/(gP*gN))
}

ecl(1, 1, 1, 1)
# epsilon_max is fixed as 0.8 of ecl
emax=ecl(1,1,1,1)*0.8


#function representing the trade-off between rP and epsilon/epsilon_max
tradeoff=function(e,d){
  #e is the ratio epsilon/epsilon_max
  #d is the trade-off strength
  (1-(e^d))^{1/d}
}

#function calculating the maximal value of the trade-off
# this is the maximum (or minimum) of the second derivative
# of the trade-off function with respect to epsilon/epsilon_max

d2tradeoffde2=function(e,d){
  #e is the ratio epsilon/epsilon_max
  #d is the trade-off strength
  -e^{d-2}*(d-1)*(1-e^d)^({(1/d)-2})
}


# calculation of the x values
e=seq(0, emax, 0.01)/emax

#calculation of the maximum for different values of delta
d2tradeoffde2(e,1.5)


max(d2tradeoffde2(e,1.5))
which.max(d2tradeoffde2(e,1.5))


# plot the graphs with different trade-off strengths
#save the default plot parameters
op<-par(no.readonly=TRUE)
op$mar



###################################################
## figure drawing

# save the figures un the jpeg format
jpeg(file='figure2_Tradeoff_s05075123.jpg',width = 9,height = 6, units='in',quality=100,res = 600)
# plot a graph with various s values
par(mar=c(2,1,1,2),mfrow = c(1,1),oma=c(4,4,0,0))
plot(e, tradeoff(e,0.5), type="l", xlab = "", 
     ylab = "", cex.axis=2)
lines(e,tradeoff(e,0.75), lty=1)
lines(e,tradeoff(e,1), lty=2)
lines(e,tradeoff(e,2), lty=4)
lines(e,tradeoff(e,3), lty=4)
#x-axis label
mtext(text = expression(paste("Plant attractiveness ratio ", over(alpha, alpha[max]))),
      side = 1, line = 2.5, outer = TRUE, cex=1.6)
#y-axis label
mtext(text= expression(paste("Plant intrinsic growth rate ", r[P])), 
      side = 2, line = 2, outer = TRUE, cex = 1.6)


# add the s values
text(x = 0.25, y = 0.25, labels = expression (paste( s, "= 0.5")), cex = 1.6)
text(x = 0.4, y = 0.4, labels = expression (paste( s, "= 0.75")), cex = 1.6)
text(x = 0.18, y = 0.12, labels = "Convex", cex = 1.6)

text(x = 0.5, y = 0.5, labels = expression (paste( s, "= 1")), cex = 1.6)
text(x = 0.45, y = 0.65, labels = "Linear", cex = 1.6)

text(x = 0.7, y = 0.7, labels = expression (paste( s, "= 2")), cex = 1.6)
text(x = 0.8, y = 0.8, labels = expression (paste( s, "= 3")), cex = 1.6)
text(x = 0.9, y = 0.9, labels = "Concave", cex = 1.6)
dev.off()