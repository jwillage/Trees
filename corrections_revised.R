set.seed(123)
blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Whitehall St", cross1.segment = "NA", 
                      cross1.street = "South St", cross1.lat = "40.7015313",
                      cross1.lon = "-74.0125451", cross2.segment = "NA", cross2.street = "Water St", 
                      cross2.lat = "40.7024253",  cross2.lon = "-74.0128533", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(255, 219, 116), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "South St", cross1.segment = "NA", 
                      cross1.street = "Broad St", cross1.lat = "40.7018033",
                      cross1.lon = "-74.0111941", cross2.segment = "NA", cross2.street = "Old Slip", 
                      cross2.lat = "40.7032022",  cross2.lon = "-74.0080238", count = 5))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(254, 324), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Coenties Alley", cross1.segment = "NA", 
                      cross1.street = "Pearl St", cross1.lat = "40.7038257",
                      cross1.lon = "-74.0105122", cross2.segment = "NA", cross2.street = "Stone St", 
                      cross2.lat = "40.7041258",  cross2.lon = "-74.0106996", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(64), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Greenwich St", cross1.segment = "NA", 
                      cross1.street = "Battery Pl", cross1.lat = "40.704831",
                      cross1.lon = "-74.0149741", cross2.segment = "NA", cross2.street = "Morris St", 
                      cross2.lat = "40.7062918",  cross2.lon = "-74.0142904", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(241), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Washington St", cross1.segment = "NA", 
                      cross1.street = "Battery Pl", cross1.lat = "40.7049542",
                      cross1.lon = "-74.0156551", cross2.segment = "NA", cross2.street = "Morris St", 
                      cross2.lat = "40.7064688",  cross2.lon = "-74.0151112", count = 4))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(45, 61, 107), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "West St", cross1.segment = "NA", 
                      cross1.street = "Battery Pl", cross1.lat = "40.7049041",
                      cross1.lon = "-74.016429", cross2.segment = "NA", cross2.street = "Morris St", 
                      cross2.lat = "40.7066631",  cross2.lon = "-74.0159777", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(215), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Trinity Pl", cross1.segment = "NA", 
                      cross1.street = "Edgar St", cross1.lat = "40.7069113",
                      cross1.lon = "-74.0135642", cross2.segment = "NA", cross2.street = "Morris St", 
                      cross2.lat = "40.7062859",  cross2.lon = "-74.0142797", count = 8))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(24, 175), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(355), "id"], ]$blockId <- 6133

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Murray St", cross1.segment = "NA", 
                      cross1.street = "Greenwich St", cross1.lat = "40.7149158",
                      cross1.lon = "-74.011372", cross2.segment = "NA", cross2.street = "West St", 
                      cross2.lat = "40.7152289",  cross2.lon = "-74.0132174", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(173), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Ericsson Pl", cross1.segment = "NA", 
                      cross1.street = "Hudston St", cross1.lat = "40.7206428",
                      cross1.lon = "-74.008462", cross2.segment = "NA", cross2.street = "Varick St", 
                      cross2.lat = "40.7204477",  cross2.lon = "-74.0067052", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(59, 209), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Laight St", cross1.segment = "NA", 
                      cross1.street = "Hudson St", cross1.lat = "40.7219774",
                      cross1.lon = "-74.0082224", cross2.segment = "NA", cross2.street = "Varick St", 
                      cross2.lat = "40.7218601",  cross2.lon = "-74.0068021", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(358), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Varick St", cross1.segment = "NA", 
                      cross1.street = "Laight St", cross1.lat = "40.7218703",
                      cross1.lon = "-74.0068041", cross2.segment = "NA", cross2.street = "Vestry St", 
                      cross2.lat = "40.7224842",  cross2.lon = "-74.0067264", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(257), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Hudston St", cross1.segment = "NA", 
                      cross1.street = "Canal St", cross1.lat = "40.7235508",
                      cross1.lon = "-74.0076261", cross2.segment = "NA", cross2.street = "Watts St", 
                      cross2.lat = "40.7239225",  cross2.lon = "-74.0075228", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(9), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Broome St", cross1.segment = "NA", 
                      cross1.street = "Hudston St", cross1.lat = "40.724571",
                      cross1.lon = "-74.0077767", cross2.segment = "NA", cross2.street = "Varick St", 
                      cross2.lat = "40.7244306",  cross2.lon = "-74.0060497", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(360), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "West St", cross1.segment = "NA", 
                      cross1.street = "Barrow St", cross1.lat = "40.7320118",
                      cross1.lon = "-74.0102604", cross2.segment = "NA", cross2.street = "Morton St", 
                      cross2.lat = "40.7312978",  cross2.lon = "-74.0103215", count = 7))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(16) & trees.err$cluster2 %in% c(1), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "West St", cross1.segment = "NA", 
                      cross1.street = "Perry St", cross1.lat = "40.7345803",
                      cross1.lon = "-74.0100587", cross2.segment = "NA", cross2.street = "W 11th St", 
                      cross2.lat = "40.7353091",  cross2.lon = "-74.0099683", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(16) & trees.err$cluster2 %in% c(2), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "West St", cross1.segment = "NA", 
                      cross1.street = "Christopher St", cross1.lat = "40.7324549",
                      cross1.lon = "-74.0102222", cross2.segment = "NA", cross2.street = "W 10th St", 
                      cross2.lat = "40.7331746",  cross2.lon = "-74.0101575", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(16) & trees.err$cluster2 %in% c(3), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Spring St", cross1.segment = "NA", 
                      cross1.street = "Hudston St", cross1.lat = "40.7258496",
                      cross1.lon = "-74.0075496", cross2.segment = "NA", cross2.street = "Renwick St", 
                      cross2.lat = "40.7259102",  cross2.lon = "-74.0083705", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(186, 170), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(252), "id"], ]$blockId <- 7587
blocks[blocks$id == 7587, "count"] <- 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(68), "id"], ]$blockId <- 7130
blocks[blocks$id == 7587, "count"] <- 9

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Spring St", cross1.segment = "NA", 
                      cross1.street = "Hudston St", cross1.lat = "40.7258496",
                      cross1.lon = "-74.0075496", cross2.segment = "NA", cross2.street = "Renwick St", 
                      cross2.lat = "40.7259102",  cross2.lon = "-74.0083705", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(68), "id"], ]$blockId <- nrow(blocks)

km <- kmeans(cbind(trees.err[trees.err$cluster == 112, "lat"], 
                   trees.err[trees.err$cluster ==112, "lon"]), centers = 3, nstart = 50)
trees.err[trees.err$cluster == 112, "cluster2"] <- as.factor(km$cluster)
blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Greenwich St", cross1.segment = "NA", 
                      cross1.street = "Christopher St", cross1.lat = "40.7328697",
                      cross1.lon = "-74.00753", cross2.segment = "NA", cross2.street = "W 10th St", 
                      cross2.lat = "40.7335536",  cross2.lon = "-74.0073681", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(112) & trees.err$cluster2 %in% c(1), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Greenwich St", cross1.segment = "NA", 
                      cross1.street = "Charles St", cross1.lat = "40.7342877",
                      cross1.lon = "-74.0071789", cross2.segment = "NA", cross2.street = "Perry St", 
                      cross2.lat = "40.7349959",  cross2.lon = "-74.0069842", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(112) & trees.err$cluster2 %in% c(2), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Greenwich St", cross1.segment = "NA", 
                      cross1.street = "Charles St", cross1.lat = "40.7342877",
                      cross1.lon = "-74.0071789", cross2.segment = "NA", cross2.street = "Perry St", 
                      cross2.lat = "40.7349959",  cross2.lon = "-74.0069842", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(112) & trees.err$cluster2 %in% c(3), "id"], ]$blockId <- nrow(blocks)

km <- kmeans(cbind(trees.err[trees.err$cluster == 120, "lat"], 
                   trees.err[trees.err$cluster ==120, "lon"]), centers = 2, nstart = 50)
trees.err[trees.err$cluster ==120, "cluster2"] <- as.factor(km$cluster)
blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Ave of the Americas", cross1.segment = "NA", 
                      cross1.street = "W 10th St", cross1.lat = "40.7347854",
                      cross1.lon = "-73.9987127", cross2.segment = "NA", cross2.street = "W 11th St", 
                      cross2.lat = "40.7353723",  cross2.lon = "-73.9982628", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(120) & trees.err$cluster2 %in% c(1), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(120) & trees.err$cluster2 %in% c(2), "id"], ]$blockId <- 2021
blocks[blocks$id == 2021, "count"] <- 10

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(240), "id"], ]$blockId <- 497
blocks[blocks$id == 497, "count"] <- 21

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(162, 39), "id"], ]$blockId <- 1773
blocks[blocks$id == 1773, "count"] <- 15

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(128), "id"], ]$blockId <- 3406
blocks[blocks$id == 3406, "count"] <- 4

km <- kmeans(cbind(trees.err[trees.err$cluster == 143, "lat"], 
                   trees.err[trees.err$cluster ==143, "lon"]), centers = 2, nstart = 50)
trees.err[trees.err$cluster ==143, "cluster2"] <- as.factor(km$cluster)
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(143) & trees.err$cluster2 == 1, "id"], ]$blockId <- 5994
blocks[blocks$id == 5994, "count"] <- blocks[blocks$id == 5994, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(143) & trees.err$cluster2 == 2, "id"], ]$blockId <- 3676
blocks[blocks$id == 3676, "count"] <- blocks[blocks$id == 3676, "count"] + 2

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "W 28th St", cross1.segment = "NA", 
                      cross1.street = "8th Ave", cross1.lat = "40.7484482",
                      cross1.lon = "-73.9962072", cross2.segment = "NA", cross2.street = "9th Ave", 
                      cross2.lat = "40.7496274",  cross2.lon = "-73.9990616", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(356), "id"], ]$blockId <- nrow(blocks)

km <- kmeans(cbind(trees.err[trees.err$cluster == 76, "lat"], 
                   trees.err[trees.err$cluster ==76, "lon"]), centers = 3, nstart = 50)
trees.err[trees.err$cluster ==76, "cluster2"] <- as.factor(km$cluster)
blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "9th Ave", cross1.segment = "NA", 
                      cross1.street = "W 40th St", cross1.lat = "40.75716",
                      cross1.lon = "-73.9936141", cross2.segment = "NA", cross2.street = "W 41st St", 
                      cross2.lat = "40.7578307",  cross2.lon = "-73.9930979", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(76) & trees.err$cluster2 == 1,"id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(76) & trees.err$cluster2 == 2, "id"], ]$blockId <- 4826
blocks[blocks$id == 4826, "count"] <- blocks[blocks$id == 4826, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(76) & trees.err$cluster2 == 3, "id"], ]$blockId <- 3558
blocks[blocks$id == 3558, "count"] <- blocks[blocks$id == 3558, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "10th Ave", cross1.segment = "NA", 
                      cross1.street = "W 40th St", cross1.lat = "40.7571152",
                      cross1.lon = "-73.9973222", cross2.segment = "NA", cross2.street = "W 39th St", 
                      cross2.lat = "40.7577245",  cross2.lon = "-73.9968583", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(178), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "W 41st St", cross1.segment = "NA", 
                      cross1.street = "11th Ave", cross1.lat = "40.7601521",
                      cross1.lon = "-73.9988199", cross2.segment = "NA", cross2.street = "Galvin Ave", 
                      cross2.lat = "40.7593921",  cross2.lon = "-73.9970041", count = 1))
treeMap[treeMap$id %in% 173611, ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "W 40th St", cross1.segment = "NA", 
                      cross1.street = "11th Ave", cross1.lat = "40.7595089",
                      cross1.lon = "-73.9992298", cross2.segment = "NA", cross2.street = "Galvin Ave", 
                      cross2.lat = "40.7588384",  cross2.lon = "-73.9975776", count = 1))
treeMap[treeMap$id %in% 90925, ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "12th Ave", cross1.segment = "NA", 
                      cross1.street = "W 34th St", cross1.lat = "40.7570771",
                      cross1.lon = "-74.0047123", cross2.segment = "NA", cross2.street = "W 40th St", 
                      cross2.lat = "40.7607087",  cross2.lon = "-74.0020474", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(29), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(3), "id"], ]$blockId <- 7248
blocks[blocks$id == 7248, "count"] <- blocks[blocks$id == 7248, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(293), "id"], ]$blockId <- 1492
blocks[blocks$id == 1492, "count"] <- blocks[blocks$id == 1492, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(229), "id"], ]$blockId <- 1982
blocks[blocks$id == 1982, "count"] <- blocks[blocks$id == 1982, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(184), "id"], ]$blockId <- 3149
blocks[blocks$id == 3149, "count"] <- blocks[blocks$id == 3149, "count"] + 6

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "W End Ave", cross1.segment = "NA", 
                      cross1.street = "W 61st St", cross1.lat = "40.7728761",
                      cross1.lon = "-73.9895366", cross2.segment = "NA", cross2.street = "W 62nd St", 
                      cross2.lat = "40.7735215",  cross2.lon = "-73.9891197", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(325), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "W 63rd St", cross1.segment = "NA", 
                      cross1.street = "Amsterdam Ave", cross1.lat = "40.7729215",
                      cross1.lon = "-73.9857758", cross2.segment = "NA", cross2.street = "W End Ave", 
                      cross2.lat = "40.7741109",  cross2.lon = "-73.988645", count = 5))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(339, 225), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(211, 340), "id"], ]$blockId <- 1797
blocks[blocks$id == 1797, "count"] <- blocks[blocks$id == 1797, "count"] + 6

treeMap[treeMap$id == 96195, ]$blockId <- 914
blocks[blocks$id == 914, "count"] <- blocks[blocks$id == 914, "count"] + 1

treeMap[treeMap$id == 269900, ]$blockId <- 461
blocks[blocks$id == 461, "count"] <- blocks[blocks$id == 461, "count"] + 1

treeMap[treeMap$id == 288875, ]$blockId <- 356
blocks[blocks$id == 356, "count"] <- blocks[blocks$id == 356, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(338, 123, 165), "id"], ]$blockId <- 681
blocks[blocks$id == 681, "count"] <- blocks[blocks$id == 681, "count"] + 7

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(237), "id"], ]$blockId <- 4387
blocks[blocks$id == 4387, "count"] <- blocks[blocks$id == 4387, "count"] + 1

km <- kmeans(cbind(trees.err[trees.err$cluster == 62, "lat"], 
                   trees.err[trees.err$cluster == 62, "lon"]),  centers = 2, nstart = 50)
trees.err[trees.err$cluster == 62, "cluster2"] <- as.factor(km$cluster)
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(62) & trees.err$cluster2 == 1, "id"], ]$blockId <- 2488
blocks[blocks$id == 2488, "count"] <- blocks[blocks$id == 2488, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(62) & trees.err$cluster2 == 2, "id"], ]$blockId <- 1426
blocks[blocks$id == 1426, "count"] <- blocks[blocks$id == 1426, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(313), "id"], ]$blockId <- 6110
blocks[blocks$id == 6110, "count"] <- blocks[blocks$id == 6110, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(265), "id"], ]$blockId <- 7255
blocks[blocks$id == 7255, "count"] <- blocks[blocks$id == 7255, "count"] + 3

km <- kmeans(cbind(trees.err[trees.err$cluster == 26, "lat"], 
                   trees.err[trees.err$cluster == 26, "lon"]), centers = 3, nstart = 50)
trees.err[trees.err$cluster == 26, "cluster2"] <- as.factor(km$cluster)
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(26) & trees.err$cluster2 %in% c(1, 2), "id"], ]$blockId <- 3651
blocks[blocks$id == 3651, "count"] <- blocks[blocks$id == 3651, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(26) & trees.err$cluster2 == 3, "id"], ]$blockId <- 7255
blocks[blocks$id == 7255, "count"] <- blocks[blocks$id == 7255, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(226, 190, 203, 176), "id"], ]$blockId <- 3651
blocks[blocks$id == 3651, "count"] <- blocks[blocks$id == 3651, "count"] + 11

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(303, 227, 134), "id"], ]$blockId <- 5270
blocks[blocks$id == 5270, "count"] <- blocks[blocks$id == 5270, "count"] + 5

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(336), "id"], ]$blockId <- 6850
blocks[blocks$id == 6850, "count"] <- blocks[blocks$id == 6850, "count"] + 1

km <- kmeans(cbind(trees.err[trees.err$cluster == 79, "lat"], 
                   trees.err[trees.err$cluster == 79, "lon"]), centers = 2, nstart = 50)
trees.err[trees.err$cluster == 79, "cluster2"] <- as.factor(km$cluster)
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(79) & trees.err$cluster2 == 1, "id"], ]$blockId <- 1048
blocks[blocks$id == 1048, "count"] <- blocks[blocks$id == 1048, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(79) & trees.err$cluster2 == 2, "id"], ]$blockId <- 3116
blocks[blocks$id == 3116, "count"] <- blocks[blocks$id == 3116, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(198, 270, 192, 151), "id"], ]$blockId <- 3065
blocks[blocks$id == 3065, "count"] <- blocks[blocks$id == 3065, "count"] + 12

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(330, 163, 297, 17), "id"], ]$blockId <- 1048
blocks[blocks$id == 1048, "count"] <- blocks[blocks$id == 1048, "count"] + 11

treeMap[treeMap$id == 203869, ]$blockId <- 266
blocks[blocks$id == 266, "count"] <- blocks[blocks$id == 266, "count"] + 1

treeMap[treeMap$id == 251960, ]$blockId <- 2447
blocks[blocks$id == 2447, "count"] <- blocks[blocks$id == 2447, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "W 110th St", cross1.segment = "NA", 
                      cross1.street = "Amsterdam Ave", cross1.lat = "40.8029916",
                      cross1.lon = "-73.9638743", cross2.segment = "NA", cross2.street = "Broadway", 
                      cross2.lat = "40.8041266",  cross2.lon = "-73.9665909", count = 4))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(304), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Amsterdam Ave", cross1.segment = "NA", 
                      cross1.street = "W 110th St", cross1.lat = "40.8029986",
                      cross1.lon = "-73.9638521", cross2.segment = "NA", cross2.street = "W 111th St", 
                      cross2.lat = "40.8036442",  cross2.lon = "-73.9633908", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(104), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(177), "id"], ]$blockId <- 3304
blocks[blocks$id == 3304, "count"] <- blocks[blocks$id == 3304, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(6), "id"], ]$blockId <- 4489
blocks[blocks$id == 4489, "count"] <- blocks[blocks$id == 4489, "count"] + 5

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(295), "id"], ]$blockId <- 2566
blocks[blocks$id == 2566, "count"] <- blocks[blocks$id == 2566, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(317, 121), "id"], ]$blockId <- 3329
blocks[blocks$id == 3329, "count"] <- blocks[blocks$id == 3329, "count"] + 8

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(220, 172, 11, 124), "id"], ]$blockId <- 1591
blocks[blocks$id == 1591, "count"] <- blocks[blocks$id == 1591, "count"] + 11

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Broadway", cross1.segment = "NA", 
                      cross1.street = "W 121st St", cross1.lat = "40.8111766",
                      cross1.lon = "-73.9614739", cross2.segment = "NA", cross2.street = "W 122nd St", 
                      cross2.lat = "40.8117912",  cross2.lon = "-73.9610018", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(90), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(159, 243, 212), "id"], ]$blockId <- 2721
blocks[blocks$id == 2721, "count"] <- blocks[blocks$id == 2721, "count"] + 7

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(345), "id"], ]$blockId <- 1628
blocks[blocks$id == 1628, "count"] <- blocks[blocks$id == 1628, "count"] + 4

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(37), "id"], ]$blockId <- 392
blocks[blocks$id == 392, "count"] <- blocks[blocks$id == 392, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "W 122nd St", cross1.segment = "NA", 
                      cross1.street = "Amsterdam Ave", cross1.lat = "40.8106453",
                      cross1.lon = "-73.9582843", cross2.segment = "NA", cross2.street = "Broadway", 
                      cross2.lat = "40.8118013",  cross2.lon = "-73.961016", count = 8))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(311, 287), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(125, 92, 197, 40, 88, 168), "id"], ]$blockId <- 2346
blocks[blocks$id == 2346, "count"] <- blocks[blocks$id == 2346, "count"] + 12

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(332), "id"], ]$blockId <- 33
blocks[blocks$id == 33, "count"] <- blocks[blocks$id == 33, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(202), "id"], ]$blockId <- 2848
blocks[blocks$id == 2848, "count"] <- blocks[blocks$id == 2848, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(148, 96, 93), "id"], ]$blockId <- 4893
blocks[blocks$id == 4893, "count"] <- blocks[blocks$id == 4893, "count"] + 5

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(160), "id"], ]$blockId <- 6433
blocks[blocks$id == 6433, "count"] <- blocks[blocks$id == 6433, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(113), "id"], ]$blockId <- 66
blocks[blocks$id == 66, "count"] <- blocks[blocks$id == 66, "count"] + 6

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(309, 32), "id"], ]$blockId <- 3682
blocks[blocks$id == 3682, "count"] <- blocks[blocks$id == 3682, "count"] + 4

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(234, 341, 327, 343), "id"], ]$blockId <- 3603
blocks[blocks$id == 3603, "count"] <- blocks[blocks$id == 3603, "count"] + 6

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(126), "id"], ]$blockId <- 457
blocks[blocks$id == 457, "count"] <- blocks[blocks$id == 457, "count"] + 7

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(118, 185, 106, 135), "id"], ]$blockId <- 7435
blocks[blocks$id == 7435, "count"] <- blocks[blocks$id == 7435, "count"] + 13

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(288), "id"], ]$blockId <- 7325
blocks[blocks$id == 7325, "count"] <- blocks[blocks$id == 7325, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Riverside Dr", cross1.segment = "NA", 
                      cross1.street = "W 165th St", cross1.lat = "40.8409466",
                      cross1.lon = "-73.9444847", cross2.segment = "NA", cross2.street = "W 181st St", 
                      cross2.lat = "40.8517265",  cross2.lon = "-73.9419266", count = 7))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(36, 87), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(307), "id"], ]$blockId <- 7953
blocks[blocks$id == 7953, "count"] <- blocks[blocks$id == 7953, "count"] + 5

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(5), "id"], ]$blockId <- 7747
blocks[blocks$id == 7747, "count"] <- blocks[blocks$id == 7747, "count"] + 2

km <- kmeans(cbind(trees.err[trees.err$cluster == 167, "lat"], 
                   trees.err[trees.err$cluster == 167, "lon"]), centers = 2, nstart = 50)
trees.err[trees.err$cluster == 167, "cluster2"] <- as.factor(km$cluster)
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(167) & trees.err$cluster2 == 1, "id"], ]$blockId <- 6971
blocks[blocks$id == 6971, "count"] <- blocks[blocks$id == 6971, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(167) & trees.err$cluster2 == 2, "id"], ]$blockId <- 7953
blocks[blocks$id == 7953, "count"] <- blocks[blocks$id == 7953, "count"] + 2

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Pinehurst Ave", cross1.segment = "NA", 
                      cross1.street = "W 176th St", cross1.lat = "40.8474082",
                      cross1.lon = "-73.9406954", cross2.segment = "NA", cross2.street = "NA", 
                      cross2.lat = "NA",  cross2.lon = "NA", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(321), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(161), "id"], ]$blockId <- 5934
blocks[blocks$id == 5934, "count"] <- blocks[blocks$id == 5934, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Haven Ave", cross1.segment = "NA", 
                      cross1.street = "W 181st St", cross1.lat = "40.851344",
                      cross1.lon = "-73.941297", cross2.segment = "NA", cross2.street = "NA", 
                      cross2.lat = "NA",  cross2.lon = "NA", count = 11))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(153, 63), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(108), "id"], ]$blockId <- 74
blocks[blocks$id == 74, "count"] <- blocks[blocks$id == 74, "count"] + 6

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Henry Hudson Pkwy", cross1.segment = "NA", 
                      cross1.street = "Ft Tryon Pl", cross1.lat = "40.8631247",
                      cross1.lon = "-73.9336079", cross2.segment = "NA", cross2.street = "Staff St", 
                      cross2.lat = "40.8668339",  cross2.lon = "73.9309906", count = 4))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(21), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(78), "id"], ]$blockId <- 1315
blocks[blocks$id == 1315, "count"] <- blocks[blocks$id == 1315, "count"] + 8

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(348), "id"], ]$blockId <- 5265
blocks[blocks$id == 5265, "count"] <- blocks[blocks$id == 5265, "count"] + 5

treeMap[treeMap$id == 116951, ]$blockId <- 2908 #cluster 259
blocks[blocks$id == 2908, "count"] <- blocks[blocks$id == 2908, "count"] + 1

treeMap[treeMap$id == 73239, ]$blockId <- 949 #cluster 259
blocks[blocks$id == 949, "count"] <- blocks[blocks$id == 949, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(60), "id"], ]$blockId <- 6702
blocks[blocks$id == 6702, "count"] <- blocks[blocks$id == 6702, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(2, 242, 306, 238, 95, 1, 152, 221), "id"], ]$blockId <- 2865
blocks[blocks$id == 2865, "count"] <- blocks[blocks$id == 2865, "count"] + 14

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(244, 228, 256), "id"], ]$blockId <- 1683
blocks[blocks$id == 1683, "count"] <- blocks[blocks$id == 1683, "count"] + 14

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(206, 207), "id"], ]$blockId <- 6760
blocks[blocks$id == 6760, "count"] <- blocks[blocks$id == 6760, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(213), "id"], ]$blockId <- 6681
blocks[blocks$id == 6681, "count"] <- blocks[blocks$id == 6681, "count"] + 2

km <- kmeans(cbind(trees.err[trees.err$cluster == 187, "lat"], 
                   trees.err[trees.err$cluster == 187, "lon"]), centers = 2, nstart = 50)
trees.err[trees.err$cluster == 187, "cluster2"] <- as.factor(km$cluster)
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(187) & trees.err$cluster2 == 1, "id"], ]$blockId <- 3033
blocks[blocks$id == 3033, "count"] <- blocks[blocks$id == 3033, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(187) & trees.err$cluster2 == 2, "id"], ]$blockId <- 3412
blocks[blocks$id == 3412, "count"] <- blocks[blocks$id == 3412, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Amsterdam Ave", cross1.segment = "NA", 
                      cross1.street = "Audubon Ave", cross1.lat = "40.857152",
                      cross1.lon = "-73.927394", cross2.segment = "NA", cross2.street = "W 190th St", 
                      cross2.lat = "40.8537356",  cross2.lon = "73.9268361", count = 4))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(194), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Laurel Hill Ter", cross1.segment = "NA", 
                      cross1.street = "Amsterdam Ave", cross1.lat = "40.8485033",
                      cross1.lon = "-73.930589", cross2.segment = "NA", cross2.street = "W 186th St", 
                      cross2.lat = "40.8507088",  cross2.lon = "73.9275417", count = 9))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(253, 328, 326, 138), "id"], ]$blockId <- nrow(blocks) 

km <- kmeans(cbind(trees.err[trees.err$cluster == 174, "lat"], 
                   trees.err[trees.err$cluster == 174, "lon"]), centers = 3, nstart = 50)
trees.err[trees.err$cluster == 174, "cluster2"] <- as.factor(km$cluster)
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(174) & trees.err$cluster2 == 1, "id"], ]$blockId <- 5608
blocks[blocks$id == 5608, "count"] <- blocks[blocks$id == 5608, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(174) & trees.err$cluster2 == 2, "id"], ]$blockId <- 2297
blocks[blocks$id == 2297, "count"] <- blocks[blocks$id == 2297, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(174) & trees.err$cluster2 == 3, "id"], ]$blockId <- 311
blocks[blocks$id == 311, "count"] <- blocks[blocks$id == 311, "count"] + 2

treeMap[treeMap$id == 85830, ]$blockId <- 3209 #cluster 200
blocks[blocks$id == 3209, "count"] <- blocks[blocks$id == 3209, "count"] + 1

treeMap[treeMap$id == 263575, ]$blockId <- 742 #cluster 200
blocks[blocks$id == 742, "count"] <- blocks[blocks$id == 742, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Harlem River Dr", cross1.segment = "NA", 
                      cross1.street = "W 155th St", cross1.lat = "40.829194",
                      cross1.lon = "-73.9372833", cross2.segment = "NA", cross2.street = "W 155th St", 
                      cross2.lat = "40.8283416",  cross2.lon = "73.9351877", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(49), "id"], ]$blockId <- nrow(blocks) 

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(233, 361, 181, 344, 101, 274, 331, 164, 129, 364), "id"], ]$blockId <- 7108
blocks[blocks$id == 7108, "count"] <- blocks[blocks$id == 7108, "count"] + 22

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(98), "id"], ]$blockId <- 4548
blocks[blocks$id == 4548, "count"] <- blocks[blocks$id == 7108, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(71), "id"], ]$blockId <- 781
blocks[blocks$id == 781, "count"] <- blocks[blocks$id == 781, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(139, 272), "id"], ]$blockId <- 4506
blocks[blocks$id == 4506, "count"] <- blocks[blocks$id == 4506, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(247, 157, 55, 100, 156, 277), "id"], ]$blockId <- 6494
blocks[blocks$id == 6494, "count"] <- blocks[blocks$id == 6494, "count"] + 14

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(70), "id"], ]$blockId <- 2091
blocks[blocks$id == 2091, "count"] <- blocks[blocks$id == 2091, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(335, 291), "id"], ]$blockId <- 2473
blocks[blocks$id == 2473, "count"] <- blocks[blocks$id == 2473, "count"] + 7

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(94), "id"], ]$blockId <- 7034
blocks[blocks$id == 7034, "count"] <- blocks[blocks$id == 7034, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(91), "id"], ]$blockId <- 2332
blocks[blocks$id == 2332, "count"] <- blocks[blocks$id == 2332, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(368), "id"], ]$blockId <- 5787
blocks[blocks$id == 5787, "count"] <- blocks[blocks$id == 5787, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(245, 350), "id"], ]$blockId <- 3586
blocks[blocks$id == 3586, "count"] <- blocks[blocks$id == 3586, "count"] + 4

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(258), "id"], ]$blockId <- 4720
blocks[blocks$id == 4720, "count"] <- blocks[blocks$id == 4720, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(249), "id"], ]$blockId <- 2073
blocks[blocks$id == 2073, "count"] <- blocks[blocks$id == 2073, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(273), "id"], ]$blockId <- 4167
blocks[blocks$id == 4167, "count"] <- blocks[blocks$id == 4167, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(235), "id"], ]$blockId <- 5416
blocks[blocks$id == 5416, "count"] <- blocks[blocks$id == 5416, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(347), "id"], ]$blockId <- 5611
blocks[blocks$id == 5611, "count"] <- blocks[blocks$id == 5611, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(318, 182), "id"], ]$blockId <- 5493
blocks[blocks$id == 5493, "count"] <- blocks[blocks$id == 5493, "count"] + 10

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(23, 82), "id"], ]$blockId <- 5014
blocks[blocks$id == 5014, "count"] <- blocks[blocks$id == 5014, "count"] + 6

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(289, 222), "id"], ]$blockId <- 717
blocks[blocks$id == 717, "count"] <- blocks[blocks$id == 717, "count"] + 7

treeMap[treeMap$id == 263457, "blockId"] <- 926 #cluster 67
blocks[blocks$id == 926, "count"] <- blocks[blocks$id == 926, "count"] + 1

treeMap[treeMap$id == 226198, "blockId"] <- 3108 #cluster 67
blocks[blocks$id == 3108, "count"] <- blocks[blocks$id == 3108, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(313), "id"], ]$blockId <- 6110
blocks[blocks$id == 6110, "count"] <- blocks[blocks$id == 6110, "count"] + 3

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "2nd Ave", cross1.segment = "NA", 
                              cross1.street = "E 127th St", cross1.lat = "40.8043784",
                              cross1.lon = "-73.932414", cross2.segment = "NA", cross2.street = "E 128th St", 
                              cross2.lat = "40.8040052",  cross2.lon = "73.9320839", count = 9))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(57, 283, 305, 56, 281), "id"], ]$blockId <- nrow(blocks) 

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "2nd Ave", cross1.segment = "NA", 
                              cross1.street = "E 127th St", cross1.lat = "40.8043784",
                              cross1.lon = "-73.932414", cross2.segment = "NA", cross2.street = "Harlem River Dr", 
                              cross2.lat = "40.8040638",  cross2.lon = "73.9312188", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(77, 201), "id"], ]$blockId <- nrow(blocks) 

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(169, 146, 154, 363), "id"], ]$blockId <- 5983
blocks[blocks$id == 5983, "count"] <- blocks[blocks$id == 5983, "count"] + 7

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "1st Ave", cross1.segment = "NA", 
                              cross1.street = "E 126th St", cross1.lat = "40.8025373",
                              cross1.lon = "-73.9308857", cross2.segment = "NA", cross2.street = "E 127th St", 
                              cross2.lat = "40.8032266",  cross2.lon = "73.9307484", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(262), "id"], ]$blockId <- nrow(blocks) 

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 125th St", cross1.segment = "NA", 
                              cross1.street = "1st Ave", cross1.lat = "40.8018336",
                              cross1.lon = "-73.9313603", cross2.segment = "NA", cross2.street = "2nd Ave", 
                              cross2.lat = "40.8027672",  cross2.lon = "73.9335628", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(117), "id"], ]$blockId <- nrow(blocks) 

treeMap[treeMap$id == 241565, "blockId"] <- 8013 #cluster 271
blocks[blocks$id == 8013, "count"] <- blocks[blocks$id == 8013, "count"] + 1

treeMap[treeMap$id == 243249, "blockId"] <- 4113  #cluster 271
blocks[blocks$id == 4113, "count"] <- blocks[blocks$id == 4113, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(299, 142), "id"], ]$blockId <- 3911
blocks[blocks$id == 3911, "count"] <- blocks[blocks$id == 3911, "count"] + 5

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(145), "id"], ]$blockId <- 4816
blocks[blocks$id == 4816, "count"] <- blocks[blocks$id == 4816, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(20), "id"], ]$blockId <- 7138
blocks[blocks$id == 7138, "count"] <- blocks[blocks$id == 7138, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(171), "id"], ]$blockId <- 993
blocks[blocks$id == 993, "count"] <- blocks[blocks$id == 993, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(111), "id"], ]$blockId <- 3756
blocks[blocks$id == 3756, "count"] <- blocks[blocks$id == 3756, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(85), "id"], ]$blockId <- 886
blocks[blocks$id == 886, "count"] <- blocks[blocks$id == 886, "count"] + 7

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(80, 83), "id"], ]$blockId <- 5562
blocks[blocks$id == 5562, "count"] <- blocks[blocks$id == 5562, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(99, 312), "id"], ]$blockId <- 5709
blocks[blocks$id == 5709, "count"] <- blocks[blocks$id == 5709, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(34, 354, 41, 122), "id"], ]$blockId <- 5554
blocks[blocks$id == 5554, "count"] <- blocks[blocks$id == 5554, "count"] + 6

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(18, 114, 130, 7, 316), "id"], ]$blockId <- 5551
blocks[blocks$id == 5551, "count"] <- blocks[blocks$id == 5551, "count"] + 8

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "W 110th St", cross1.segment = "NA", 
                              cross1.street = "Duke Ellington Cir", cross1.lat = "40.7971026",
                              cross1.lon = "-73.9497339", cross2.segment = "NA", cross2.street = "Lenox Ave", 
                              cross2.lat = "40.7982164",  cross2.lon = "73.9524006", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(132), "id"], ]$blockId <- nrow(blocks) 

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(275), "id"], ]$blockId <- 5160
blocks[blocks$id == 5160, "count"] <- blocks[blocks$id == 5160, "count"] + 3

km <- kmeans(cbind(trees.err[trees.err$cluster == 308, "lat"], 
                   trees.err[trees.err$cluster == 308, "lon"]), centers = 2, nstart = 50)
trees.err[trees.err$cluster == 308, "cluster2"] <- as.factor(km$cluster)
blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 116th St", cross1.segment = "NA", 
                              cross1.street = "2nd Ave", cross1.lat = "40.7970397",
                              cross1.lon = "-73.937793", cross2.segment = "NA", cross2.street = "3rd Ave", 
                              cross2.lat = "40.7979563",  cross2.lon = "73.9400123", count = 4))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(308) & trees.err$cluster2 == 1, "id"], ]$blockId <- nrow(blocks) 

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(308) & trees.err$cluster2 == 2, "id"], ]$blockId <- 5669
blocks[blocks$id == 5669, "count"] <- blocks[blocks$id == 5669, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(38), "id"], ]$blockId <- 895
blocks[blocks$id == 895, "count"] <- blocks[blocks$id == 895, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 113th St", cross1.segment = "NA", 
                              cross1.street = "1st Ave", cross1.lat = "40.7946114",
                              cross1.lon = "-73.9380755", cross2.segment = "NA", cross2.street = "2nd Ave", 
                              cross2.lat = "40.7950701",  cross2.lon = "73.9391626", count = 1))
treeMap[treeMap$id == 268577, "blockId"] <- nrow(blocks) # cluster 46

treeMap[treeMap$id == 232308, "blockId"] <- 7752 # cluster 46
blocks[blocks$id == 7752, "count"] <- blocks[blocks$id == 7752, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(315), "id"], ]$blockId <- 4849
blocks[blocks$id == 4849, "count"] <- blocks[blocks$id == 4849, "count"] + 2

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 116th St", cross1.segment = "NA", 
                              cross1.street = "1st Ave", cross1.lat = "40.7959907",
                              cross1.lon = "-73.9354204", cross2.segment = "NA", cross2.street = "2nd Ave", 
                              cross2.lat = "40.7970397",  cross2.lon = "73.937793", count = 13))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(349, 260, 196, 102, 353), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(89, 25, 22, 232), "id"], ]$blockId <- 776
blocks[blocks$id == 776, "count"] <- blocks[blocks$id == 776, "count"] + 10

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(284), "id"], ]$blockId <- 3902
blocks[blocks$id == 3902, "count"] <- blocks[blocks$id == 3902, "count"] + 4

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(282), "id"], ]$blockId <- 4733
blocks[blocks$id == 4733, "count"] <- blocks[blocks$id == 4733, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 116th St", cross1.segment = "NA", 
                              cross1.street = "1st Ave", cross1.lat = "40.7959907",
                              cross1.lon = "-73.9354204", cross2.segment = "NA", cross2.street = "2nd Ave", 
                              cross2.lat = "40.7970397",  cross2.lon = "73.937793", count = 13))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(349, 260, 196, 102, 353), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "New St", cross1.segment = "NA", 
                              cross1.street = "E 110th St", cross1.lat = "40.7918123",
                              cross1.lon = "-73.9372153", cross2.segment = "NA", cross2.street = "E 111th St", 
                              cross2.lat = "40.7924012",  cross2.lon = "73.936813", count = 5))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(230, 84), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(204, 44, 8), "id"], ]$blockId <- 7024
blocks[blocks$id == 7024, "count"] <- blocks[blocks$id == 7024, "count"] + 12

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(301), "id"], ]$blockId <- 5502
blocks[blocks$id == 5502, "count"] <- blocks[blocks$id == 5502, "count"] + 3

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "F D R Dr", cross1.segment = "NA", 
                              cross1.street = "E 106th St", cross1.lat = "40.7887174",
                              cross1.lon = "-73.9378758", cross2.segment = "NA", cross2.street = "E 110th St", 
                              cross2.lat = "40.7913337",  cross2.lon = "73.9360921", count = 5))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(370), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(179), "id"], ]$blockId <- 6368
blocks[blocks$id == 6368, "count"] <- blocks[blocks$id == 6368, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(52), "id"], ]$blockId <- 2856
blocks[blocks$id == 2856, "count"] <- blocks[blocks$id == 2856, "count"] + 4

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(319), "id"], ]$blockId <- 7682
blocks[blocks$id == 7682, "count"] <- blocks[blocks$id == 7682, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(208), "id"], ]$blockId <- 7853
blocks[blocks$id == 7853, "count"] <- blocks[blocks$id == 7853, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(188), "id"], ]$blockId <- 3274
blocks[blocks$id == 3274, "count"] <- blocks[blocks$id == 3274, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(31, 369), "id"], ]$blockId <- 5050
blocks[blocks$id == 5050, "count"] <- blocks[blocks$id == 5050, "count"] + 6

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(266, 239, 97, 268, 278), "id"], ]$blockId <- 2733
blocks[blocks$id == 2733, "count"] <- blocks[blocks$id == 2733, "count"] + 10

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(166, 36, 199, 81), "id"], ]$blockId <- 194
blocks[blocks$id == 194, "count"] <- blocks[blocks$id == 194, "count"] + 9

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(30, 264, 367, 50, 236), "id"], ]$blockId <- 2070
blocks[blocks$id == 2070, "count"] <- blocks[blocks$id == 2070, "count"] + 8

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(105), "id"], ]$blockId <- 4985
blocks[blocks$id == 4985, "count"] <- blocks[blocks$id == 4985, "count"] + 8

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(48, 69, 14, 35, 323), "id"], ]$blockId <- 6460
blocks[blocks$id == 6460, "count"] <- blocks[blocks$id == 6460, "count"] + 10

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(110), "id"], ]$blockId <- 1155
blocks[blocks$id == 1155, "count"] <- blocks[blocks$id == 1155, "count"] + 1

km <- kmeans(cbind(trees.err[trees.err$cluster == 359, "lat"], 
                   trees.err[trees.err$cluster == 359, "lon"]), centers = 2, nstart = 50)
trees.err[trees.err$cluster == 359, "cluster2"] <- as.factor(km$cluster)
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(359) & trees.err$cluster2 == 2, "id"], ]$blockId <- 811
blocks[blocks$id == 811, "count"] <- blocks[blocks$id == 811, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(359) & trees.err$cluster2 == 1, "id"], ]$blockId <- 4176
blocks[blocks$id == 4176, "count"] <- blocks[blocks$id == 4176, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(193), "id"], ]$blockId <- 2016
blocks[blocks$id == 2016, "count"] <- blocks[blocks$id == 2016, "count"] + 2

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "F D R Dr", cross1.segment = "NA", 
                              cross1.street = "E 79th St", cross1.lat = "40.7703207",
                              cross1.lon = "-73.9478153", cross2.segment = "NA", cross2.street = "E 81st St", 
                              cross2.lat = "40.771508",  cross2.lon = "73.9466669", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(66), "id"], ]$blockId <- nrow(blocks)

km <- kmeans(cbind(trees.err[trees.err$cluster == 72, "lat"], 
                   trees.err[trees.err$cluster == 72, "lon"]), centers = 3, nstart = 50)
trees.err[trees.err$cluster == 72, "cluster2"] <- as.factor(km$cluster)
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(72) & trees.err$cluster2 == 1, "id"], ]$blockId <- 1356
blocks[blocks$id == 1356, "count"] <- blocks[blocks$id == 1356, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(72) & trees.err$cluster2 == 2, "id"], ]$blockId <- 2962
blocks[blocks$id == 2962, "count"] <- blocks[blocks$id == 2962, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(72) & trees.err$cluster2 == 3, "id"], ]$blockId <- 350
blocks[blocks$id == 350, "count"] <- blocks[blocks$id == 350, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(366), "id"], ]$blockId <- 2845
blocks[blocks$id == 2845, "count"] <- blocks[blocks$id == 2845, "count"] + 5

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(276, 136), "id"], ]$blockId <- 2542
blocks[blocks$id == 2542, "count"] <- blocks[blocks$id == 2542, "count"] + 3

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 73rd St", cross1.segment = "NA", 
                              cross1.street = "F D R Dr", cross1.lat = "40.7665791",
                              cross1.lon = "-73.9510098", cross2.segment = "NA", cross2.street = "York Ave", 
                              cross2.lat = "40.7675462",  cross2.lon = "73.9532421", count = 4))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(114, 119), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 72nd St", cross1.segment = "NA", 
                              cross1.street = "F D R Dr", cross1.lat = "40.7660623",
                              cross1.lon = "-73.9518376", cross2.segment = "NA", cross2.street = "York Ave", 
                              cross2.lat = "40.7668459",  cross2.lon = "73.9537484", count = 31))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(205, 351, 250, 115, 183, 131), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 71st St", cross1.segment = "NA", 
                              cross1.street = "F D R Dr", cross1.lat = "40.765282",
                              cross1.lon = "-73.952151", cross2.segment = "NA", cross2.street = "York Ave", 
                              cross2.lat = "40.766151",  cross2.lon = "73.9542263", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(352), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Ed Koch Queensboro Brg Ext", cross1.segment = "NA", 
                              cross1.street = "E 60th St", cross1.lat = "40.7608568",
                              cross1.lon = "-73.9629081", cross2.segment = "NA", cross2.street = "E 63rd St", 
                              cross2.lat = "40.762689",  cross2.lon = "73.9615762", count = 16))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(210, 218, 261, 337, 19, 333, 140), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 61st St", cross1.segment = "NA", 
                              cross1.street = "1st Ave", cross1.lat = "40.7608706",
                              cross1.lon = "-73.9610813", cross2.segment = "NA", cross2.street = "Ed Koch Queensboro Brg Ext", 
                              cross2.lat = "40.7614354",  cross2.lon = "73.9624492", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(103), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 60th St", cross1.segment = "NA", 
                              cross1.street = "2nd Ave", cross1.lat = "40.7612177",
                              cross1.lon = "-73.963888", cross2.segment = "NA", cross2.street = "Ed Koch Queensboro Brg Ext", 
                              cross2.lat = "40.7608357",  cross2.lon = "73.9629009", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(109), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(137), "id"], ]$blockId <- 1022
blocks[blocks$id == 1022, "count"] <- blocks[blocks$id == 1022, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(294, 75), "id"], ]$blockId <- 2661
blocks[blocks$id == 2661, "count"] <- blocks[blocks$id == 2661, "count"] + 8

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 49th St", cross1.segment = "NA", 
                              cross1.street = "1st Ave", cross1.lat = "40.7532236",
                              cross1.lon = "-73.9665495", cross2.segment = "NA", cross2.street = "F D R Dr", 
                              cross2.lat = "40.7524799",  cross2.lon = "73.9648248", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(296, 42), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% c(213617, 227771, 247745), ]$blockId <- 1156 # cluster 322
blocks[blocks$id == 1156, "count"] <- blocks[blocks$id == 1156, "count"] + 3

treeMap[treeMap$id %in% c(263429, 288099, 222567, 213630, 260158), ]$blockId <- 8173 # cluster 322
blocks[blocks$id == 8173, "count"] <- blocks[blocks$id == 8173, "count"] + 5

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(27), "id"], ]$blockId <- 229
blocks[blocks$id == 229, "count"] <- blocks[blocks$id == 229, "count"] + 2

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "W 35th St", cross1.segment = "NA", 
                              cross1.street = "5th Ave", cross1.lat = "40.7491081",
                              cross1.lon = "-73.9840749", cross2.segment = "NA", cross2.street = "6th Ave", 
                              cross2.lat = "40.7504555",  cross2.lon = "73.9872782", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(15), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(346), "id"], ]$blockId <- 988
blocks[blocks$id == 988, "count"] <- blocks[blocks$id == 988, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(357), "id"], ]$blockId <- 5442
blocks[blocks$id == 5442, "count"] <- blocks[blocks$id == 5442, "count"] + 2

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 25th St", cross1.segment = "NA", 
                              cross1.street = "3rd Ave", cross1.lat = "40.7401109",
                              cross1.lon = "-73.982215", cross2.segment = "NA", cross2.street = "Lexington Ave", 
                              cross2.lat = "40.7407587",  cross2.lon = "73.9837954", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(246), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(28), "id"], ]$blockId <- 736
blocks[blocks$id == 736, "count"] <- blocks[blocks$id == 736, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(133), "id"], ]$blockId <- 3831
blocks[blocks$id == 3831, "count"] <- blocks[blocks$id == 3831, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(334), "id"], ]$blockId <- 7034
blocks[blocks$id == 7034, "count"] <- blocks[blocks$id == 7034, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(94, 47, 189, 248), "id"], ]$blockId <- 3140
blocks[blocks$id == 3140, "count"] <- blocks[blocks$id == 3140, "count"] + 10

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(300), "id"], ]$blockId <- 34
blocks[blocks$id == 34, "count"] <- blocks[blocks$id == 34, "count"] + 4

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(216, 141), "id"], ]$blockId <- 4945
blocks[blocks$id == 4945, "count"] <- blocks[blocks$id == 4945, "count"] + 6

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(12, 191, 292), "id"], ]$blockId <- 4433
blocks[blocks$id == 4433, "count"] <- blocks[blocks$id == 4433, "count"] + 6

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 20th St", cross1.segment = "NA", 
                              cross1.street = "Stuyvesant Loop N", cross1.lat = "40.73306",
                              cross1.lon = "-73.975391", cross2.segment = "NA", cross2.street = "Stuyvesant Loop N", 
                              cross2.lat = "40.734041",  cross2.lon = "73.977722", count = 17))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(267, 342, 362, 43, 150, 329), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(269), "id"], ]$blockId <- 2898
blocks[blocks$id == 2898, "count"] <- blocks[blocks$id == 2898, "count"] + 2

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 6th St", cross1.segment = "NA", 
                              cross1.street = "Ave C", cross1.lat = "40.729756",
                              cross1.lon = "-73.9747137", cross2.segment = "NA", cross2.street = "F D R Dr", 
                              cross2.lat = "40.7288767",  cross2.lon = "-73.9725381", count = 5))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(201, 231), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(314), "id"], ]$blockId <- 2135
blocks[blocks$id == 2135, "count"] <- blocks[blocks$id == 2135, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(51), "id"], ]$blockId <- 5119
blocks[blocks$id == 5119, "count"] <- blocks[blocks$id == 5119, "count"] + 4

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "E 6th St", cross1.segment = "NA", 
                              cross1.street = "Ave C", cross1.lat = "40.729756",
                              cross1.lon = "-73.9747137", cross2.segment = "NA", cross2.street = "F D R Dr", 
                              cross2.lat = "40.7288767",  cross2.lon = "-73.9725381", count = 5))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(201, 231), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Lillian Wald Dr", cross1.segment = "NA", 
                              cross1.street = "E Houston St", cross1.lat = "40.71964",
                              cross1.lon = "-73.978034", cross2.segment = "NA", cross2.street = "E Houston St", 
                              cross2.lat = "40.719214",  cross2.lon = "-73.97674", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(74, 251), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(224), "id"], ]$blockId <- 6005
blocks[blocks$id == 6005, "count"] <- blocks[blocks$id == 6005, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(4), "id"], ]$blockId <- 6042
blocks[blocks$id == 6042, "count"] <- blocks[blocks$id == 6042, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Grand St", cross1.segment = "NA", 
                              cross1.street = "Clinton St", cross1.lat = "40.7159528",
                              cross1.lon = "-73.9866991", cross2.segment = "NA", cross2.street = "Pitt St", 
                              cross2.lat = "40.715217",  cross2.lon = "-73.9842724", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(127, 302, 13), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(73), "id"], ]$blockId <- 1
blocks[blocks$id == 1, "count"] <- blocks[blocks$id == 1, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(54), "id"], ]$blockId <- 660
blocks[blocks$id == 660, "count"] <- blocks[blocks$id == 660, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Essex St", cross1.segment = "NA", 
                              cross1.street = "Canal St", cross1.lat = "40.7144184",
                              cross1.lon = "-73.990254", cross2.segment = "NA", cross2.street = "Hester St", 
                              cross2.lat = "40.7155581",  cross2.lon = "-73.9897929", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(65), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Madison St", cross1.segment = "NA", 
                              cross1.street = "Gouverneur St", cross1.lat = "40.7131288",
                              cross1.lon = "-73.9838807", cross2.segment = "NA", cross2.street = "Jackson St", 
                              cross2.lat = "40.7134917",  cross2.lon = "-73.9809096", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(58, 310, 223), "id"], ]$blockId <- nrow(blocks)

km <- kmeans(cbind(trees.err[trees.err$cluster == 286, "lat"], 
                   trees.err[trees.err$cluster == 286, "lon"]), centers = 4, nstart = 50)
trees.err[trees.err$cluster == 286, "cluster2"] <- as.factor(km$cluster)
blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "South St", cross1.segment = "NA", 
                              cross1.street = "Gouverneur Slip E", cross1.lat = "40.7108398",
                              cross1.lon = "-73.9832726", cross2.segment = "NA", cross2.street = "Jackson St", 
                              cross2.lat = "40.7110307",  cross2.lon = "-73.9805873", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(286) & trees.err$cluster2 == 3, "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(286) & trees.err$cluster2 == 2, "id"], ]$blockId <- 403
blocks[blocks$id == 403, "count"] <- blocks[blocks$id == 403, "count"] + 1

treeMap[treeMap$id == 233106, ]$blockId <- 5772 #cluster 286 cluster2 1
blocks[blocks$id == 5772, "count"] <- blocks[blocks$id == 5772, "count"] + 1

treeMap[treeMap$id == 213556, ]$blockId <- 403 #cluster 286 cluster2 1
blocks[blocks$id == 403, "count"] <- blocks[blocks$id == 403, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(147), "id"], ]$blockId <- 853
blocks[blocks$id == 853, "count"] <- blocks[blocks$id == 853, "count"] + 1

km <- kmeans(cbind(trees.err[trees.err$cluster == 53, "lat"], 
                   trees.err[trees.err$cluster == 53, "lon"]), centers = 2, nstart = 50)
trees.err[trees.err$cluster == 53, "cluster2"] <- as.factor(km$cluster)
blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Frank T Modica Way", cross1.segment = "NA", 
                              cross1.street = "Cherry St", cross1.lat = "40.7111362",
                              cross1.lon = "-73.989963", cross2.segment = "NA", cross2.street = "South St", 
                              cross2.lat = "40.7100897",  cross2.lon = "-73.9898314", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(53) & trees.err$cluster2 == 2, "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(53) & trees.err$cluster2 == 1, "id"], ]$blockId <- 7467
blocks[blocks$id == 7467, "count"] <- blocks[blocks$id == 7467, "count"] + 3

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Forsyth St", cross1.segment = "NA", 
                              cross1.street = "Canal St", cross1.lat = "40.7155899",
                              cross1.lon = "-73.9942883", cross2.segment = "NA", cross2.street = "Division St", 
                              cross2.lat = "40.7142802",  cross2.lon = "-73.9941873", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(263), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Pike St", cross1.segment = "NA", 
                              cross1.street = "Cherry St", cross1.lat = "40.7108688",
                              cross1.lon = "-73.9920145", cross2.segment = "NA", cross2.street = "Madison St", 
                              cross2.lat = "40.7124831",  cross2.lon = "-73.9922789", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(280), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(290), "id"], ]$blockId <- 2452
blocks[blocks$id == 2452, "count"] <- blocks[blocks$id == 2452, "count"] + 2

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Catherine Slip", cross1.segment = "NA", 
                              cross1.street = "Catherine St", cross1.lat = "40.7113655",
                              cross1.lon = "-73.9967797", cross2.segment = "NA", cross2.street = "Catherine St", 
                              cross2.lat = "40.709739",  cross2.lon = "-73.9963935", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(155, 217), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(285), "id"], ]$blockId <- 2842
blocks[blocks$id == 2842, "count"] <- blocks[blocks$id == 2842, "count"] + 1

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Rober F Wagner Sr Pl", cross1.segment = "NA", 
                              cross1.street = "Pearl St", cross1.lat = "40.710167",
                              cross1.lon = "-74.0011383", cross2.segment = "NA", cross2.street = "South St", 
                              cross2.lat = "40.7085816",  cross2.lon = "-73.9990062", count = 1))
treeMap[treeMap$id == 264721, ]$blockId <- nrow(blocks) #214

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Rober F Wagner Sr Pl", cross1.segment = "NA", 
                              cross1.street = "Madison St", cross1.lat = "40.71177",
                              cross1.lon = "-73.9997091", cross2.segment = "NA", cross2.street = "Rober F Wagner Sr Pl", 
                              cross2.lat = "40.710167",  cross2.lon = "-74.0011383", count = 1))
treeMap[treeMap$id == 209479, ]$blockId <- nrow(blocks) #214

blocks <- rbind(blocks, cbind(id = nrow(blocks) + 1, primary.street = "Frankfort St", cross1.segment = "NA", 
                              cross1.street = "Gold St", cross1.lat = "40.710961",
                              cross1.lon = "-74.0036383", cross2.segment = "NA", cross2.street = "Spurce St", 
                              cross2.lat = "40.7119124",  cross2.lon = "-74.0060486", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(33, 320, 180, 365), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(144), "id"], ]$blockId <- 8167
blocks[blocks$id == 8167, "count"] <- blocks[blocks$id == 8167, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(86), "id"], ]$blockId <- 194
blocks[blocks$id == 194, "count"] <- blocks[blocks$id == 194, "count"] + 2

blocks[blocks$agg == 3636, c("cross1.street", "cross2.street", "cross2.lat", "cross2.lon", "distance")] <- 
  c("Spring St", "W Houston St", 40.7291183, -74.010693, 321.869)

blocks[blocks$agg == 6171, c("cross2.street")] <- c("Murray St")

blocks[blocks$agg == 2271, c("cross1.street", "cross1.lat", "cross1.lon", "cross2.street", "cross2.lat", "cross2.lon", "distance")] <- 
  c("2nd Ave", 40.740403, -73.9790677, "3rd Ave",  40.74135, -73.98131, 213.36)
