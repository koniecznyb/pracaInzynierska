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