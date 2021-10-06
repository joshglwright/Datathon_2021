library(here)
pantry<-read.csv(here('Datathon','Datathon_2021', 'data','Food_Pantries.csv'))
pantry_count<-as.data.frame(table(pantry$Subregion))

## data cleaning
pantry_count_mod_1<-pantry_count[2:164,]
pantry_count_mod_1[14,2]<-6
colnames(pantry_count_mod_1)<-c('County','Number of Pantries')

## exporting
# library(writexl)
# write_xlsx(pantry_count_mod_1, "C:/Users/Joshua Wright/Desktop/Pantry_Count.xlsx")