

STAT <- as.vector(unlist(Loldf))
FRAC <- rep(c("F-1","F-0.9","F-0.8","F-0.7","F-0.6","F-0.5","F-0.4","F-0.3","F-0.2","F-0.1","F-0"),rep(100,11))
NAME <- rep("f-d",11*100)

DATA1 <- cbind(NAME, FRAC, STAT)

STAT <- as.vector(unlist(LoldD))
FRAC <- rep(c("F-1","F-0.9","F-0.8","F-0.7","F-0.6","F-0.5","F-0.4","F-0.3","F-0.2","F-0.1","F-0"),rep(100,11))
NAME <- rep("D",11*100)

DATA2 <- cbind(NAME, FRAC, STAT)

STAT <- as.vector(unlist(LnewD2))
FRAC <- rep(c("F-1","F-0.9","F-0.8","F-0.7","F-0.6","F-0.5","F-0.4","F-0.3","F-0.2","F-0.1","F-0"),rep(100,11))
NAME <- rep("Bd-fraction",11*100) #rep("Bd-fraction",11*100)

DATA22 <- cbind(NAME, FRAC, STAT)

STAT <- rep(c(1,0.9,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.1,0), each=100)
FRAC <- rep(c("F-1","F-0.9","F-0.8","F-0.7","F-0.6","F-0.5","F-0.4","F-0.3","F-0.2","F-0.1","F-0"),rep(100,11))
NAME <- rep("real fraction",11*100)

DATA3 <- cbind(NAME, FRAC, STAT)


FINAL <- rbind(DATA1,DATA2,DATA22, DATA3)
colnames(FINAL) <- c("Label","fraction","statistic")

FINAL <- as.data.frame(FINAL)
FINAL[,3] <- as.numeric(as.vector(FINAL[,3]))
require(ggplot2)
#geom_boxplot(outlier.shape = NA)
sp <- ggplot(data = FINAL, aes(x=fraction, y=statistic, fill=Label))+ geom_boxplot(outlier.shape = NA) + scale_y_continuous(breaks = c(-1,-0.9,-0.8,-0.7,-0.6,-0.5, -0.4,-0.3,-0.2,-0.1,0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1)) + scale_fill_manual(name = "statistics", values = c("orange","light blue","grey","black"),labels = c("0" = "Foo", "1" = "Bar","2"="B"))

plot(sp)

#ggsave("p1.pdf", plot = sp)
