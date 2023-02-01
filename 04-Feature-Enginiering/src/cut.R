
library(dplyr)

url <- "C:\\Users\\PC\\Desktop\\Ciencias de datos\\Blog\\04-Feature-Enginiering\\data\\insurance.csv"¿
df <- read.csv(url)

newlabels <- c('Under Weight','Normal','Over Weight','Obese','Extremely Obese')


df <- df %>% mutate(Degree_Obseity = cut(df$bmi,5,newlabels))