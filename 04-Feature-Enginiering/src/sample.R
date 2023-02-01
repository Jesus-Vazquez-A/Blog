library(dplyr)

url <- "C:\\Users\\PC\\Desktop\\Ciencias de datos\\Blog\\04-Feature-Enginiering\\data\\weight-height.csv"
df <- read.csv(url)



set.seed(2018)
lower_sample <- sample(55:62,size = 10,replace = T)
upper_sample <- sample(72:77,size = 10,replace = T)

# We set random samples for values that are in a normal range, for the lower and upper interval data.



df_clear <- df %>% 
  
  mutate(Height = ifelse(Height < 55.02,lower_sample,Height)) %>%
  
  mutate(Height = ifelse(Height > 77.67,upper_sample,Height))

# We replace the outlires.


summary(df$Height)


summary(df_clear$Height)


# We verify the changes made to the data.
