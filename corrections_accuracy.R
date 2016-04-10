blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Clinton St", cross1.segment = "NA", 
                      cross1.street = "E Broadway", cross1.lat = "40.714271",
                      cross1.lon = "-73.987150", cross2.segment = "NA", cross2.street = "Grand St", 
                      cross2.lat = "40.715890",  cross2.lon = "-73.986761", count = 1))
points[rownames(points) %in% rownames(points.err[points.err$cluster == 1, ]), ]$blockId <- nrow(blocks)
blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Essex St", cross1.segment = "NA", 
                      cross1.street = "Canal St", cross1.lat = "40.714441",
                      cross1.lon = "-73.9902798", cross2.segment = "NA", cross2.street = "Hester St", 
                      cross2.lat = "40.7155714",  cross2.lon = "-73.9897916", count = 2))
points[rownames(points) %in% rownames(points.err[points.err$cluster == 2, ]), ]$blockId <- nrow(blocks)
blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Delancey St", cross1.segment = "NA", 
                      cross1.street = "Clinton St", cross1.lat = "40.7174961",
                      cross1.lon = "-73.9858789", cross2.segment = "NA", cross2.street = "Ridge St", 
                      cross2.lat = "40.7169602",  cross2.lon = "-73.9842443", count = 1))
points[rownames(points) %in% rownames(points.err[points.err$cluster == 3, ]), ]$blockId <- nrow(blocks)
blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Lillian Wald Dr", cross1.segment = "NA", 
                      cross1.street = "E Houston St", cross1.lat = "40.7192975",
                      cross1.lon = "-73.9767423", cross2.segment = "NA", cross2.street = "E Houston St", 
                      cross2.lat = "40.7197559",  cross2.lon = "-73.9779063", count = 7))
points[rownames(points) %in% rownames(points.err[points.err$cluster == 4, ]), ]$blockId <- nrow(blocks)
blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Stanton St", cross1.segment = "NA", 
                      cross1.street = "Bowery", cross1.lat = "40.7227944",
                      cross1.lon = "-73.9929982", cross2.segment = "NA", cross2.street = "Chrystie St", 
                      cross2.lat = "40.7224248",  cross2.lon = "-73.9916577", count = 2))
points[rownames(points) %in% rownames(points.err[points.err$cluster == 5, ]), ]$blockId <- nrow(blocks)
blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Grand St", cross1.segment = "NA", 
                      cross1.street = "Clinton St", cross1.lat = "40.7159042",
                      cross1.lon = "-73.9867166", cross2.segment = "NA", cross2.street = "Pitt St", 
                      cross2.lat = "40.7152026",  cross2.lon = "-73.9842807", count = 3))
points[rownames(points) %in% rownames(points.err[points.err$cluster == 6, ]), ]$blockId <- nrow(blocks)
blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Forsyth St", cross1.segment = "NA", 
                      cross1.street = "Canal St", cross1.lat = "40.7156065",
                      cross1.lon = "-73.9942984", cross2.segment = "NA", cross2.street = "Division St", 
                      cross2.lat = "40.7142846",  cross2.lon = "-73.9941916", count = 1))
points[rownames(points) %in% rownames(points.err[points.err$cluster == 7, ]), ]$blockId <- nrow(blocks)
