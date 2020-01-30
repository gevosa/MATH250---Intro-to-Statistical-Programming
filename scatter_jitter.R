library(nycflights13)
library(ggplot2)
library(dplyr)
alaska_flights <- flights %>% 
  filter(carrier == "AS") 
ggplot(data = alaska_flights, mapping = aes(x = dep_delay, y = arr_delay)) + 
   geom_jitter(width = 30, height = 30)
ggsave("scatter_jitter.pdf")
