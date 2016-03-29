# for LES block table, manual corrections of all blocks with count > 0

g <- geocodeBlockEnds("Ludlow St", "Grand St", "Hester St")
blocks[blocks$id == 46, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("E 6th St", "Avenue C", "Avenue D")
blocks[blocks$id == 39, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Avenue B", "E 3rd St", "E 4th St")
blocks[blocks$id == 34, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("E 3rd St", "Avenue C", "Avenue D")
blocks[blocks$id == 29, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("E 5th St", "Avenue C", "Avenue D")
blocks[blocks$id == 25, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Canal St", "Chrystie St", "Bowery")
blocks[blocks$id == 14, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("E 7th St", "Avenue C", "Avenue D")
blocks[blocks$id == 6, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                     g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Baruch Pl", "Stanton St", "E Houston St")
blocks[blocks$id == 2, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                     g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Willett St", "Delancey St", "Grand St")
blocks[blocks$id == 179, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                     g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Essex St", "Canal St", "Hester St")
blocks[blocks$id == 198, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                       g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Stanton St", "Pitt St", "Ridge St")
blocks[blocks$id == 140, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                       g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Bowery", "Delancey St", "Spring St")
blocks[blocks$id == 172, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                       g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Ludlow St", "Broome St", "Delancey St")
blocks[blocks$id == 139, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                       g$cross2$street, g$cross2$y, g$cross2$x)
blocks[blocks$id == 201, c("start", "end")] <- c(295, 313)
blocks[blocks$id == 201, c(5:10)] <- c("E Broadway", 40.714596, -73.9830705,
                                       "Grand St", 40.714657, -73.9825233)

blocks[blocks$id == 35, c("start", "end")] <- c(393, 411)
g <- geocodeBlockEnds("Grand St", "Clinton St", "Suffolk St")
blocks[blocks$id == 35, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                       g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("2nd Ave", "E 1st St", "E Houston St")
blocks[blocks$id == 52, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Chrystie St", "Rivington St", "Stanton St")
blocks[blocks$id == 60, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Rivington St", "Bowery", "Chrystie St")
blocks[blocks$id == 61, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
g <- geocodeBlockEnds("Attorney St", "Rivington St", "Stanton St")
blocks[blocks$id == 79, c(5:10)] <- c(g$cross1$street, g$cross1$y, g$cross2$x,
                                      g$cross2$street, g$cross2$y, g$cross2$x)
#continue with same[7: end, ] then resave blocks and run through "aggregation" in start.R