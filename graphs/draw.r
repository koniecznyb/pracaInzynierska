supervised <- read.csv(file="MOCK_DATA.csv", head=TRUE, sep=",")

color_pallete_function <- colorRampPalette(
	colors = c("RED", "BLUE", "YELLOW"),
	space = "Lab"
)

num_colors <- nlevels(supervised$color)
diamond_color_colors <- color_pallete_function(num_colors)

plot(
	x = supervised$x,
	y = supervised$y,
	xlab = "X",
	ylab = "Y",
	pch = 20,
	col = diamond_color_colors[supervised$color]
)

pdf('cluster.pdf')
plot(x,y)
dev.off()




library(fpc)
library(cluster) 

data(iris)
fit <- kmeans(iris, 2)

clusplot(iris, fit$cluster, color=TRUE, shade=TRUE, 
  	labels=2, lines=0)
plotcluster(iris, fit$cluster)


library(ggvis)
iris %>% ggvis(~Sepal.Length, ~Sepal.Width, fill = ~Species) %>% layer_points()


library(ggplot2)
ggplot(np_graph) + geom_point(aes(x = C1, y = C2, colour = C1 >0)) +
  scale_colour_manual(name = 'PC1 > 0', values = setNames(c('red','green'),c(T, F))) +
  xlab('PC1') + ylab('PC2')

  plot(x,y,xlab="PC1",ylab="PC2", col = ifelse(x < 0,'red','green'), pch = 19 


  	rsvg-convert -f pdf -o t.pdf t.svg



  	\begin{figure}[h]
    \centering
    \textbf{Rozmieszczenie kwiatów irysów}\par\medskip
    \includegraphics[scale=0.7]{plotsepalwidthsepallength}
    \caption{Opracowanie własne}
    \label{fig:plotsepalwidthsepallength}
\end{figure}
