dat = data.frame(source=c("Agricultural 'waste'","Bio-conversion",
                          "Bio-conversion","Bio-conversion","Bio-conversion",
                          "Biofuel imports","Biomass imports","Coal imports",
                          "Coal reserves","Coal","District heating","District heating",
                          "District heating","Electricity grid","Electricity grid"),
                 target=c("Bio-conversion","Liquid","Losses","Solid","Gas","Liquid",
                          "Solid","Coal","Coal","Solid","Industry","Heating and cooling - commercial",
                          "Heating and cooling - homes","Over generation / exports","Heating and cooling - homes"),
                 value=c(124.729,0.597,26.862,280.322,81.144,35,35,11.606,63.965,75.571,
                         10.639,22.505,46.184,104.453,113.726))
eSankey(dat)

??getplace
