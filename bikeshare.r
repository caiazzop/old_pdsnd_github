ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

#added fromm master doc
## changing color of bars to blue
install.packages("ggplot2")
library(ggplot2)

install.packages("ggthemes", dependencies = TRUE)
library(ggthemes)

library(tidyr)

# NYC Rentals
install.packages("lubridate")
library(lubridate)
nyc_bike <- read.csv('new-york-city.csv', header = TRUE, sep = ",") 
nyc_date <-date(nyc_bike$Start.Time)
nyc_rental_day <- wday(nyc_date)
nyc_rental_day
nyc_rental_month <- mday(nyc_date) # - this is month day
nyc_rental_month
nyc_rental_m <- month(nyc_date)
nyc_rental_m
nyc_hour <- hour(nyc_bike$Start.Time)
nyc_hour


# Histogram for day of week (1 = Sunday)
library(ggplot2)
ggplot(aes(x=nyc_rental_day), data = nyc_bike) +
  geom_histogram(binwidth = 1, color = 'white', fill = 'blue') +
  ggtitle('NYC Day of week Rentals') + 
  labs(x="Rentals By Day, Sunday = 1") +
  facet_wrap(~nyc_bike$User.Type) # Regular customers use the service for infrequently and on weekends

# Histogram for month up to June
library(ggplot2)
ggplot(aes(x=nyc_rental_m), data = nyc_bike) +
  geom_histogram(fill = 'blue') +
  ggtitle('NYC Monthly Rentals') + 
  labs(x="Rentals By Month Through June")

