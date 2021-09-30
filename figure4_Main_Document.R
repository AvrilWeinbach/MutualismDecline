# Manuscript figure 4, diagram E3 with gA=0.2, gP=1 and sa=2.5

# required packages
library(R.matlab)
library(network) # for the arrows
library(graphics)
library(shape) #

#Getting the values to draw the graph
f_name <- 'd25gN02'
ess <- readMat(paste('./results/',f_name,'_ess.mat',sep=''))
surf <- readMat(paste('./results/',f_name,'_surf.mat',sep=''))




graphics.off()
#save the graph in a jpeg file
jpeg(file='figure4_md_with_point_and_arrows.jpg',width = 13,height = 6,units='in',quality=100,res = 600)

par(mar=c(5,2,3,2),mfrow = c(1,2),oma=c(0,4,0,0))
# prepare the bacground color palette
cc <- c("white",colorRampPalette(c("lightblue1", "mediumblue"))(4100))



#Drawing the graph for pollinator

image(as.vector(surf$rN.g),as.vector(surf$e.g),surf$Ns.g,col = cc,xlab='',ylab='',oldstyle = TRUE, cex.axis=1.5)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=3)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=3,lty=2)
# x axis title
mtext(text=expression(paste(bold("Environment: "), "pollinator intrinsic growth rate ", r[A])),side=1,line=3,outer=FALSE, cex = 1.6)
# y axis title
mtext(text=expression(paste(bold("Evolution: "), "attractiveness ratio ",  over(alpha, alpha[max]))),side=2,line=2,outer=FALSE, cex = 1.6)
#title
mtext(text=expression(paste('Pollinator density at ', bold('ecological '), 'equilibrium')),side=3,line=1,cex=1.6)
mtext(text='a',side=3,at = -0.5,font = 2,line=1,cex=1.6)


#add an arrow for evolutionary trajectories

#for the CSS with rN>0
xCSS <- (ess$rN.ess[ess$type.ess==3][170])
yCSS <- ess$ess[ess$type.ess==3][170]
network.arrow(xCSS, 0, xCSS, yCSS,  width = 0.008, length = 0.04, angle = 23)
network.arrow(xCSS, 1, xCSS, yCSS,  width = 0.008, length = 0.04, angle = 23)

#add the perturbation
network.arrow(xCSS, yCSS, -0.2, yCSS, width = 0.008, length = 0.04, angle = 23, col = "red3", border =  "red3")


#add the arrow for evolution once disturbed
network.arrow(-0.2, yCSS, -0.2, 0, width = 0.008, length = 0.04, angle = 23)

#Rescue strategy

xRes1 <- (ess$rN.ess[ess$type.ess==3][10])
yRes1 <- ess$ess[ess$type.ess==3][10]
network.arrow(-0.197, yRes1, xRes1, yRes1,  width = 0.01, length = 0.04, angle = 23, col = "white", border =  "black" )

xRes2 <- (ess$rN.ess[ess$type.ess==1][10])
yRes2 <- ess$ess[ess$type.ess==1][10]
network.arrow(-0.197, yRes2, xRes2, yRes2,  width = 0.01, length = 0.04, angle = 23, col = "white", border =  "black" )
network.arrow(xRes2, yRes2, xRes2, 0,  width = 0.008, length = 0.04, angle = 23, col = "black", border =  "black")

#add arrow numbers

text(0.64,0.38, "(1)", cex = 1.2, font = 2)
text(0.64,0.88, "(2)", cex = 1.2, font = 2)
text(0.2,0.78, "(3)", cex = 1.2, font = 2)
text(-0.24,0.5, "(4)", cex = 1.2, font = 2)
text(-0.148,0.29, "(5)", cex = 1.2, font = 2)
text(-0.148,0.17, "(6)", cex = 1.2, font = 2)
text(-0.14,0.04, "(7)", cex = 1.2, font = 2)



#Drawing the graph for plant

image(as.vector(surf$rN.g),as.vector(surf$e.g),surf$Ps.g,col = cc,xlab='',ylab='',oldstyle = TRUE, cex.axis=1.5)
lines(ess$rN.ess[ess$type.ess==3],ess$ess[ess$type.ess==3],lwd=3)
lines(ess$rN.ess[ess$type.ess==1],ess$ess[ess$type.ess==1],lwd=3,lty=2)
# x axis title
mtext(text=expression(paste(bold("Environment: "), "pollinator intrinsic growth rate ", r[A])),side=1,line=3,outer=FALSE, cex = 1.6)
# y axis title


#title
mtext(text=expression(paste('Plant density at ', bold('ecological '), 'equilibrium')),side=3,line=1,cex=1.6)
mtext(text='b',side=3,at = -0.5,font = 2,line=1,cex=1.6)

## This last part was added to the previous figure
# Add a point figuring the limit CSS value
xCSSmax <- ess$rN.ess[ess$type.ess==3][1]
yCSSmax <- ess$ess[ess$type.ess==3][1]
points(xCSSmax, yCSSmax, pch = 19, col = "red", cex = 1.2)
# Add the lines to relate this point the the axes values
lines(c(xCSSmax, xCSSmax),c(0, yCSSmax), lwd = 2, lty=3, col="red")
lines(c(-0.4, xCSSmax),c(yCSSmax, yCSSmax), lwd = 2, lty=3, col="red")

# In this part we plot again the arrows

network.arrow(xCSS, 0, xCSS, yCSS,  width = 0.008, length = 0.04, angle = 23)
network.arrow(xCSS, 1, xCSS, yCSS,  width = 0.008, length = 0.04, angle = 23)

#add the perturbation
network.arrow(xCSS, yCSS, -0.2, yCSS, width = 0.008, length = 0.04, angle = 23, col = "red3", border =  "red3")

#add the arrow for evolution once disturbed
network.arrow(-0.2, yCSS, -0.2, 0, width = 0.008, length = 0.04, angle = 23)

#Rescue strategy 
network.arrow(-0.197, yRes1, xRes1, yRes1,  width = 0.01, length = 0.04, angle = 23, col = "white", border =  "black" )
network.arrow(-0.197, yRes2, xRes2, yRes2,  width = 0.01, length = 0.04, angle = 23, col = "white", border =  "black" )
network.arrow(xRes2, yRes2, xRes2, 0,  width = 0.008, length = 0.04, angle = 23, col = "black", border =  "black")

dev.off()


