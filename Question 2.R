library(tidyr)
library(ggplot2)
library(seaborn)

load("C:/Users/brent/Documents/Classes/Data_Visualization/Tables/house_prices.rda")

##I do not know why this is not working every time I try to run the command my R locks up, as this is how it is formatted in lecture 17.
ggplot(house_prices, aes(x= house_price_index, y= date, fill = state)) + geom_point() + facet_wrap(~house_price_index)


## I do not know why this is gathering date strangely for it looks correct at first glance but upon scrolling down it is weird.  
house_prices %>% gather(Measure, Value, -house_price_index, -unemploy_perc, ) -> house_reshaped

##This graphic also locks up my R Studio and I do not know why as this is how it is formatted in the lectures.
ggplot(house_reshaped, aes(x= house_price_index, y= unemploy_perc, fill = 'value')) + geom_point() + facet_wrap(~house_price_index)