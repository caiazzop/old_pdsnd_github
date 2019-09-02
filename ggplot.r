install.packages("ggplot2")
library(ggplot2)

install.packages("ggthemes", dependencies = TRUE)
library(ggthemes)

library(tidyr)

# NYC Rentals
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
  geom_histogram() +
  ggtitle('NYC Monthly Rentals') +
  labs(x="Rentals By Month Through June")

# Histogram for rentals by hour
library(ggplot2)
ggplot(aes(x=nyc_hour), data = nyc_bike) +
  geom_histogram(binwidth = 1, color = 'white', fill = 'blue') +
  ggtitle('NYC Rentals') +
  labs(x="Rentals By Hour")


# Washington rentals
was_bike <- read.csv('washington.csv', header = TRUE, sep = ",")
names(was_bike)
was_date <-date(was_bike$Start.Time)
was_rental_day <- wday(was_date)
was_rental_day
was_rental_month <- mday(was_date) # - this is month day
was_rental_month
was_rental_m <- month(was_date)
was_rental_m
was_hour <- hour(was_bike$Start.Time)
was_hour

# Histogram for day of week (1 = Sunday)
library(ggplot2)
ggplot(aes(x=was_rental_day), data = was_bike) +
  geom_histogram(binwidth = 1, color = 'white', fill = 'blue') +
  ggtitle('Washington Day of week Rentals') +
  labs(x="Rentals By Day, Sunday = 1") +
  facet_wrap(~was_bike$User.Type

# Histogram for month up to June
library(ggplot2)
ggplot(aes(x=was_rental_m), data = was_bike) +
  geom_histogram() +
  ggtitle('Washington Monthly Rentals') +
  labs(x="Rentals By Month Through June")

# Histogram for rentals by hour
library(ggplot2)
ggplot(aes(x=was_hour), data = was_bike) +
  geom_histogram(binwidth = 1, color = 'white', fill = 'blue') +
  ggtitle('Washington Rentals') +
  labs(x="Rentals By Hour")
