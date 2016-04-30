blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Whitehall St", cross1.segment = "NA", 
                      cross1.street = "South St", cross1.lat = "40.7015313",
                      cross1.lon = "-74.0125451", cross2.segment = "NA", cross2.street = "Water St", 
                      cross2.lat = "40.7024253",  cross2.lon = "-74.0128533", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(255, 219, 116), "id"], ]$blockId <- 
  nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "South St", cross1.segment = "NA", 
                      cross1.street = "Broad St", cross1.lat = "40.7018033",
                      cross1.lon = "-74.0111941", cross2.segment = "NA", cross2.street = "Old Slip", 
                      cross2.lat = "40.7032022",  cross2.lon = "-74.0080238", count = 5))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(254, 324), "id"], ]$blockId <- 
  nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Coenties Alley", cross1.segment = "NA", 
                      cross1.street = "Pearl St", cross1.lat = "40.7038257",
                      cross1.lon = "-74.0105122", cross2.segment = "NA", cross2.street = "Stone St", 
                      cross2.lat = "40.7041258",  cross2.lon = "-74.0106996", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(64), "id"], ]$blockId <- 
  nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Greenwich St", cross1.segment = "NA", 
                      cross1.street = "Battery Pl", cross1.lat = "40.704831",
                      cross1.lon = "-74.0149741", cross2.segment = "NA", cross2.street = "Morris St", 
                      cross2.lat = "40.7062918",  cross2.lon = "-74.0142904", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(241), "id"], ]$blockId <- 
  nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Washington St", cross1.segment = "NA", 
                      cross1.street = "Battery Pl", cross1.lat = "40.7049542",
                      cross1.lon = "-74.0156551", cross2.segment = "NA", cross2.street = "Morris St", 
                      cross2.lat = "40.7064688",  cross2.lon = "-74.0151112", count = 4))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(45, 61, 107), "id"], ]$blockId <- 
  nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "West St", cross1.segment = "NA", 
                      cross1.street = "Battery Pl", cross1.lat = "40.7049041",
                      cross1.lon = "-74.016429", cross2.segment = "NA", cross2.street = "Morris St", 
                      cross2.lat = "40.7066631",  cross2.lon = "-74.0159777", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(215), "id"], ]$blockId <- 
  nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Trinity Pl", cross1.segment = "NA", 
                      cross1.street = "Edgar St", cross1.lat = "40.7069113",
                      cross1.lon = "-74.0135642", cross2.segment = "NA", cross2.street = "Morris St", 
                      cross2.lat = "40.7062859",  cross2.lon = "-74.0142797", count = 8))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(24, 175), "id"], ]$blockId <- 
  nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(355), "id"], ]$blockId <- 6133

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Murray St", cross1.segment = "NA", 
                      cross1.street = "Greenwich St", cross1.lat = "40.7149158",
                      cross1.lon = "-74.011372", cross2.segment = "NA", cross2.street = "West St", 
                      cross2.lat = "40.7152289",  cross2.lon = "-74.0132174", count = 6))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(173), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Ericsson Pl", cross1.segment = "NA", 
                      cross1.street = "Hudston St", cross1.lat = "40.7206428",
                      cross1.lon = "-74.008462", cross2.segment = "NA", cross2.street = "Varick St", 
                      cross2.lat = "40.7204477",  cross2.lon = "-74.0067052", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(59, 209), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Laight St", cross1.segment = "NA", 
                      cross1.street = "Hudson St", cross1.lat = "40.7219774",
                      cross1.lon = "-74.0082224", cross2.segment = "NA", cross2.street = "Varick St", 
                      cross2.lat = "40.7218601",  cross2.lon = "-74.0068021", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(358), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Varick St", cross1.segment = "NA", 
                      cross1.street = "Laight St", cross1.lat = "40.7218703",
                      cross1.lon = "-74.0068041", cross2.segment = "NA", cross2.street = "Vestry St", 
                      cross2.lat = "40.7224842",  cross2.lon = "-74.0067264", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(257), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Hudston St", cross1.segment = "NA", 
                      cross1.street = "Canal St", cross1.lat = "40.7235508",
                      cross1.lon = "-74.0076261", cross2.segment = "NA", cross2.street = "Watts St", 
                      cross2.lat = "40.7239225",  cross2.lon = "-74.0075228", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(9), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Broome St", cross1.segment = "NA", 
                      cross1.street = "Hudston St", cross1.lat = "40.724571",
                      cross1.lon = "-74.0077767", cross2.segment = "NA", cross2.street = "Varick St", 
                      cross2.lat = "40.7244306",  cross2.lon = "-74.0060497", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(360), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "West St", cross1.segment = "NA", 
                      cross1.street = "Barrow St", cross1.lat = "40.7320118",
                      cross1.lon = "-74.0102604", cross2.segment = "NA", cross2.street = "Morton St", 
                      cross2.lat = "40.7312978",  cross2.lon = "-74.0103215", count = 7))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(16) & trees.err$cluster2 %in% c(1), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "West St", cross1.segment = "NA", 
                      cross1.street = "Perry St", cross1.lat = "40.7345803",
                      cross1.lon = "-74.0100587", cross2.segment = "NA", cross2.street = "W 11th St", 
                      cross2.lat = "40.7353091",  cross2.lon = "-74.0099683", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(16) & trees.err$cluster2 %in% c(2), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "West St", cross1.segment = "NA", 
                      cross1.street = "Christopher St", cross1.lat = "40.7324549",
                      cross1.lon = "-74.0102222", cross2.segment = "NA", cross2.street = "W 10th St", 
                      cross2.lat = "40.7331746",  cross2.lon = "-74.0101575", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(16) & trees.err$cluster2 %in% c(3), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Spring St", cross1.segment = "NA", 
                      cross1.street = "Hudston St", cross1.lat = "40.7258496",
                      cross1.lon = "-74.0075496", cross2.segment = "NA", cross2.street = "Renwick St", 
                      cross2.lat = "40.7259102",  cross2.lon = "-74.0083705", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(186, 170), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(252), "id"], ]$blockId <- 7587
blocks[blocks$id == 7587, "count"] <- 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(68), "id"], ]$blockId <- 7130
blocks[blocks$id == 7587, "count"] <- 9

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Spring St", cross1.segment = "NA", 
                      cross1.street = "Hudston St", cross1.lat = "40.7258496",
                      cross1.lon = "-74.0075496", cross2.segment = "NA", cross2.street = "Renwick St", 
                      cross2.lat = "40.7259102",  cross2.lon = "-74.0083705", count = 3))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(68), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Greenwich St", cross1.segment = "NA", 
                      cross1.street = "Christopher St", cross1.lat = "40.7328697",
                      cross1.lon = "-74.00753", cross2.segment = "NA", cross2.street = "W 10th St", 
                      cross2.lat = "40.7335536",  cross2.lon = "-74.0073681", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(112) & trees.err$cluster2 %in% c(1), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Greenwich St", cross1.segment = "NA", 
                      cross1.street = "Charles St", cross1.lat = "40.7342877",
                      cross1.lon = "-74.0071789", cross2.segment = "NA", cross2.street = "Perry St", 
                      cross2.lat = "40.7349959",  cross2.lon = "-74.0069842", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(112) & trees.err$cluster2 %in% c(2), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Greenwich St", cross1.segment = "NA", 
                      cross1.street = "Charles St", cross1.lat = "40.7342877",
                      cross1.lon = "-74.0071789", cross2.segment = "NA", cross2.street = "Perry St", 
                      cross2.lat = "40.7349959",  cross2.lon = "-74.0069842", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(112) & trees.err$cluster2 %in% c(3), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Ave of the Americas", cross1.segment = "NA", 
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

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(143) & trees.err$cluster2 == 1, "id"], ]$blockId <- 5994
blocks[blocks$id == 5994, "count"] <- blocks[blocks$id == 5994, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(143) & trees.err$cluster2 == 2, "id"], ]$blockId <- 3676
blocks[blocks$id == 3676, "count"] <- blocks[blocks$id == 3676, "count"] + 2

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "W 28th St", cross1.segment = "NA", 
                      cross1.street = "8th Ave", cross1.lat = "40.7484482",
                      cross1.lon = "-73.9962072", cross2.segment = "NA", cross2.street = "9th Ave", 
                      cross2.lat = "40.7496274",  cross2.lon = "-73.9990616", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(356), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "9th Ave", cross1.segment = "NA", 
                      cross1.street = "W 40th St", cross1.lat = "40.75716",
                      cross1.lon = "-73.9936141", cross2.segment = "NA", cross2.street = "W 41st St", 
                      cross2.lat = "40.7578307",  cross2.lon = "-73.9930979", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(76) & trees.err$cluster2 == 1,"id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(76) & trees.err$cluster2 == 2, "id"], ]$blockId <- 4826
blocks[blocks$id == 4826, "count"] <- blocks[blocks$id == 4826, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(76) & trees.err$cluster2 == 3, "id"], ]$blockId <- 3558
blocks[blocks$id == 3558, "count"] <- blocks[blocks$id == 3558, "count"] + 1

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "10th Ave", cross1.segment = "NA", 
                      cross1.street = "W 40th St", cross1.lat = "40.7571152",
                      cross1.lon = "-73.9973222", cross2.segment = "NA", cross2.street = "W 39th St", 
                      cross2.lat = "40.7577245",  cross2.lon = "-73.9968583", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(178), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "W 41st St", cross1.segment = "NA", 
                      cross1.street = "11th Ave", cross1.lat = "40.7601521",
                      cross1.lon = "-73.9988199", cross2.segment = "NA", cross2.street = "Galvin Ave", 
                      cross2.lat = "40.7593921",  cross2.lon = "-73.9970041", count = 1))
treeMap[treeMap$id %in% 173611, ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "W 40th St", cross1.segment = "NA", 
                      cross1.street = "11th Ave", cross1.lat = "40.7595089",
                      cross1.lon = "-73.9992298", cross2.segment = "NA", cross2.street = "Galvin Ave", 
                      cross2.lat = "40.7588384",  cross2.lon = "-73.9975776", count = 1))
treeMap[treeMap$id %in% 90925, ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "12th Ave", cross1.segment = "NA", 
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

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "W End Ave", cross1.segment = "NA", 
                      cross1.street = "W 61st St", cross1.lat = "40.7728761",
                      cross1.lon = "-73.9895366", cross2.segment = "NA", cross2.street = "W 62nd St", 
                      cross2.lat = "40.7735215",  cross2.lon = "-73.9891197", count = 1))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(325), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "W 63rd St", cross1.segment = "NA", 
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

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(62) & trees.err$cluster2 == 1, "id"], ]$blockId <- 2488
blocks[blocks$id == 2488, "count"] <- blocks[blocks$id == 2488, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(62) & trees.err$cluster2 == 2, "id"], ]$blockId <- 1426
blocks[blocks$id == 1426, "count"] <- blocks[blocks$id == 1426, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(313), "id"], ]$blockId <- 6110
blocks[blocks$id == 6110, "count"] <- blocks[blocks$id == 6110, "count"] + 3

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(265), "id"], ]$blockId <- 7255
blocks[blocks$id == 7255, "count"] <- blocks[blocks$id == 7255, "count"] + 3

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

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "W 110th St", cross1.segment = "NA", 
                      cross1.street = "Amsterdam Ave", cross1.lat = "40.8029916",
                      cross1.lon = "-73.9638743", cross2.segment = "NA", cross2.street = "Broadway", 
                      cross2.lat = "40.8041266",  cross2.lon = "-73.9665909", count = 4))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(304), "id"], ]$blockId <- nrow(blocks)

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Amsterdam Ave", cross1.segment = "NA", 
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

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Broadway", cross1.segment = "NA", 
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

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "W 122nd St", cross1.segment = "NA", 
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

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Riverside Dr", cross1.segment = "NA", 
                      cross1.street = "W 165th St", cross1.lat = "40.8409466",
                      cross1.lon = "-73.9444847", cross2.segment = "NA", cross2.street = "W 181st St", 
                      cross2.lat = "40.8517265",  cross2.lon = "-73.9419266", count = 7))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(36, 87), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(307), "id"], ]$blockId <- 7953
blocks[blocks$id == 7953, "count"] <- blocks[blocks$id == 7953, "count"] + 5

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(5), "id"], ]$blockId <- 7747
blocks[blocks$id == 7747, "count"] <- blocks[blocks$id == 7747, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(167) & trees.err$cluster2 == 1, "id"], ]$blockId <- 6971
blocks[blocks$id == 6971, "count"] <- blocks[blocks$id == 6971, "count"] + 2

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(167) & trees.err$cluster2 == 2, "id"], ]$blockId <- 7953
blocks[blocks$id == 7953, "count"] <- blocks[blocks$id == 7953, "count"] + 2

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Pinehurst Ave", cross1.segment = "NA", 
                      cross1.street = "W 176th St", cross1.lat = "40.8474082",
                      cross1.lon = "-73.9406954", cross2.segment = "NA", cross2.street = "NA", 
                      cross2.lat = "NA",  cross2.lon = "NA", count = 2))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(321), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(161), "id"], ]$blockId <- 5934
blocks[blocks$id == 5934, "count"] <- blocks[blocks$id == 5934, "count"] + 1

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Haven Ave", cross1.segment = "NA", 
                      cross1.street = "W 181st St", cross1.lat = "40.851344",
                      cross1.lon = "-73.941297", cross2.segment = "NA", cross2.street = "NA", 
                      cross2.lat = "NA",  cross2.lon = "NA", count = 11))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(153, 63), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(108), "id"], ]$blockId <- 74
blocks[blocks$id == 74, "count"] <- blocks[blocks$id == 74, "count"] + 6

blocks <- rbind(blocks, 
                cbind(id = nrow(blocks) + 1, primary.street = "Henry Hudson Pkwy", cross1.segment = "NA", 
                      cross1.street = "Ft Tryon Pl", cross1.lat = "40.8631247",
                      cross1.lon = "-73.9336079", cross2.segment = "NA", cross2.street = "Staff St", 
                      cross2.lat = "40.8668339",  cross2.lon = "73.9309906", count = 4))
treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(21), "id"], ]$blockId <- nrow(blocks)

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(78), "id"], ]$blockId <- 1315
blocks[blocks$id == 1315, "count"] <- blocks[blocks$id == 1315, "count"] + 8

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(348), "id"], ]$blockId <- 5265
blocks[blocks$id == 5265, "count"] <- blocks[blocks$id == 5265, "count"] + 5

treeMap[treeMap$id == 116951, ]$blockId <- 2908
blocks[blocks$id == 2908, "count"] <- blocks[blocks$id == 2908, "count"] + 1

treeMap[treeMap$id == 73239, ]$blockId <- 949
blocks[blocks$id == 949, "count"] <- blocks[blocks$id == 949, "count"] + 1

treeMap[treeMap$id %in% trees.err[trees.err$cluster %in% c(69), "id"], ]$blockId <- 6702
blocks[blocks$id == 6702, "count"] <- blocks[blocks$id == 6702, "count"] + 1



# 255, 219, 116, 254, 324, 64, 241, 45, 61, 107, 215, 24, 175, 355, 173, 59, 209, 358, 257, 9, 360, 
# 16, 186, 170, 252, 68, 112, 120, 240, 162, 39, 128, 143, 356, 76, 178, 279, 29, 3, 293, 229, 184,
# 325, 339, 225, 211, 340, 149, 338, 123, 165, 237, 62, 265, 26, 226, 190, 203, 176, 303, 227, 134
# 336, 79, 198, 270, 192, 151, 330, 163, 297, 17, 195, 304, 104, 117, 6, 295, 317, 121, 220, 172, 11, 124
# 90, 159, 243, 212, 345, 37, 311, 287, 125, 92, 197, 40, 88, 168, 332, 202, 148, 96, 93, 160, 113
# 309, 32, 234, 341, 327, 343, 126, 118, 185, 106, 135, 288, 36, 87, 307, 5, 167, 321, 161, 153, 63
# 108, 21, 78, 348, 259