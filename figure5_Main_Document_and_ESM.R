# Manuscript figure 5 and Electronic supplementary material figure D1
# diagram E3 with (gA,gP) in {(0.2,1); (1,1); 35,0.2 and s in (1.5; 2.5; 3.5)

# required packages
library(R.matlab)
library(network) # for the arrows

# Plot figure 5 of the main document with pollinator density
# at ecological equilibrium in the bacground

graphics.off()

#save the graph in a jpeg file
jpeg(file='figure5_md.jpg',width = 13,height = 12,units='in',quality=100,res = 600)


op<-par(no.readonly=TRUE)
par(oma=c(7,12,2.5,0))



par(mfrow=c(3,3),mar=c(4,3,2,2))
# prepare the palette for the blue background
cc <- c("white",colorRampPalette(c("lightblue1", "mediumblue"))(4096))


# Plot the nine graphs

f_name <- 'd15gN02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ns.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)

mtext("a", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)





f_name <- 'd25gN02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ns.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("b", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2, lty=3, col="red")





f_name <- 'd35gN02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ns.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("c", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)



###########



f_name <- 'd15'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ns.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("d", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)


f_name <- 'd25'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ns.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("e", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2.5, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2.5, lty=3, col="red")


f_name <- 'd35'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ns.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("f", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2.5, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2.5, lty=3, col="red")







###########



f_name <- 'd15gP02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
#B_t <- (surf$Ns.g + surf$Ps.g) * (surf$co.g == 3)
B_t <- surf$Ns.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("g", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)


f_name <- 'd25gP02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ns.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("h", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2.5, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2.5, lty=3, col="red")

f_name <- 'd35gP02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ns.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("i", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2.5, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2.5, lty=3, col="red")


##################
# Outer margins titles
#x-axis title
mtext(text=expression(paste(bold("Environment: "), "Pollinator intrinsic growth rate ", r[A])),side=1,line=0,outer=TRUE, cex = 1.6)
# x-axis, delta values
mtext(text=expression(paste(s, "=1.5")),side=1,line=2,outer=TRUE, cex = 1.6, adj = 0.15)
mtext(text=expression(paste(s, "=2.5")),side=1,line=2,outer=TRUE, cex = 1.6, adj = 0.5)
mtext(text=expression(paste(s, "=3.5")),side=1,line=2,outer=TRUE, cex = 1.6, adj = 0.86)
#x-axis arrow:
arrows(-3.1, -0.4, 0.3, -0.4, xpd=NA,  lwd=3, length = 0.15)
mtext(text="Increased trade-off concavity",side=1,line=5.5,outer=TRUE, cex = 1.6, adj = 0.51)

#y-axis title
mtext(text=expression(paste(bold("Evolution: "), "Attractiveness ratio ", over(alpha, alpha[max]))),side=2,line=0,outer=TRUE, cex = 1.6)
#y axis, gamma values
mtext(text=expression(paste(gamma[A], "=3.5 and ", gamma[P], "=0.2")),side=2,line=5,outer=TRUE, cex = 1.6, adj = 0.1)
mtext(text=expression(paste(gamma[A], "=1 and ", gamma[P], "=1")),side=2,line=5,outer=TRUE, cex = 1.6, adj = 0.51)
mtext(text=expression(paste(gamma[A], "=0.2 and ", gamma[P], "=1")),side=2,line=5,outer=TRUE, cex = 1.6, adj = 0.92)
#y-axis arrow:
arrows(-4.48, 0.45,-4.48, 3.1, xpd=NA,  lwd=3, length = 0.15)
mtext(text="Increased pollinator gain compared to plant gain",side=2,line=9.5,outer=TRUE, cex = 1.6, adj = 0.51)

#title
mtext(text=expression(paste('Pollinator density at ', bold('ecological '), 'equilibrium')),side=3,line=-0.2,cex=1.6,outer=TRUE)


##################



dev.off()


################################
################################

# Plot the same figure but for plant biomass  for the electronic supplementary material

graphics.off()
jpeg(file='figure5_esm_plantbiomass.jpg',width = 13,height = 12,units='in',quality=100,res = 600)


op<-par(no.readonly=TRUE)
par(oma=c(7,12,2.5,0))


par(mfrow=c(3,3),mar=c(4,3,2,2))
# prepare the palette for the plant density background
cc <- c("white",colorRampPalette(c("lightblue1", "mediumblue"))(4096))



f_name <- 'd15gN02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ps.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("a", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)





f_name <- 'd25gN02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ps.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("b", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2, lty=3, col="red")





f_name <- 'd35gN02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ps.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("c", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)





###########



f_name <- 'd15'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ps.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("d", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)


f_name <- 'd25'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ps.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("e", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2.5, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2.5, lty=3, col="red")


f_name <- 'd35'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ps.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("f", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2.5, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2.5, lty=3, col="red")



###########



f_name <- 'd15gP02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ps.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("g", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)


f_name <- 'd25gP02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
B_t <- surf$Ps.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("h", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2.5, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2.5, lty=3, col="red")

f_name <- 'd35gP02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))
#B_t <- (surf$Ns.g + surf$Ps.g) * (surf$co.g == 3)
B_t <- surf$Ps.g
image(as.vector(surf$rN.g),as.vector(surf$e.g),B_t,col = cc,xlab='',ylab='', cex.axis=2)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=2)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=2,lty=2)
mtext("i", side = 3, line = -2, adj = 0.016, cex = 1.4, col = "black", font = 2)
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2.5, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2.5, lty=3, col="red")


##################
# Outer margins titles
#x-axis title
mtext(text=expression(paste(bold("Environment: "), "Pollinator intrinsic growth rate ", r[A])),side=1,line=0,outer=TRUE, cex = 1.6)
# x-axis, delta values
mtext(text=expression(paste(s, "=1.5")),side=1,line=2,outer=TRUE, cex = 1.6, adj = 0.15)
mtext(text=expression(paste(s, "=2.5")),side=1,line=2,outer=TRUE, cex = 1.6, adj = 0.5)
mtext(text=expression(paste(s, "=3.5")),side=1,line=2,outer=TRUE, cex = 1.6, adj = 0.86)
#x-axis arrow:
arrows(-3.1, -0.4, 0.3, -0.4, xpd=NA,  lwd=3, length = 0.15)
mtext(text="Increased trade-off concavity",side=1,line=5.5,outer=TRUE, cex = 1.6, adj = 0.51)

#y-axis title
mtext(text=expression(paste(bold("Evolution: "), "Attractiveness ratio ", over(alpha, alpha[max]))),side=2,line=0,outer=TRUE, cex = 1.6)
#y axis, gamma values
mtext(text=expression(paste(gamma[A], "=3.5 and ", gamma[P], "=0.2")),side=2,line=5,outer=TRUE, cex = 1.6, adj = 0.1)
mtext(text=expression(paste(gamma[A], "=1 and ", gamma[P], "=1")),side=2,line=5,outer=TRUE, cex = 1.6, adj = 0.51)
mtext(text=expression(paste(gamma[A], "=0.2 and ", gamma[P], "=1")),side=2,line=5,outer=TRUE, cex = 1.6, adj = 0.92)
#y-axis arrow:
arrows(-4.48, 0.45,-4.48, 3.1, xpd=NA,  lwd=3, length = 0.15)
mtext(text="Increased pollinator gain compared to plant gain",side=2,line=9.5,outer=TRUE, cex = 1.6, adj = 0.51)

#title
mtext(text=expression(paste('Plant density at ', bold('ecological '), 'equilibrium')),side=3,line=-0.2,cex=1.6,outer=TRUE)


##################



dev.off()

