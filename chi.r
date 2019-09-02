# Chicago rentals
library(lubridate)
chi_bike <- read.csv('chicago.csv', header = TRUE, sep = ",")
names(chi_bike)
chi_date <-date(chi_bike$Start.Time)
chi_rental_day <- wday(was_date)
chi_rental_day
chi_rental_month <- mday(chi_date) # - this is month day
chi_rental_month
chi_rental_m <- month(chi_date)
chi_rental_m
chi_hour <- hour(chi_bike$Start.Time)
chi_hour

# Histogram for day of week (1 = Sunday)
library(ggplot2)
ggplot(aes(x=chi_rental_day), data = chi_bike) +
  geom_histogram(binwidth = 1, color = 'white', fill = 'blue') +
  ggtitle('Chicago Day of week Rentals') +
  labs(x="Rentals By Day, Sunday = 1") +
  facet_wrap(~chi_bike$User.Type)

  # Histogram for month up to June
library(ggplot2)
ggplot(aes(x=chi_rental_m), data = chi_bike) +
  geom_histogram() +
  ggtitle('Chicago Monthly Rentals') +
  labs(x="Rentals By Month Through June")

# Histogram for rentals by hour
library(ggplot2)
ggplot(aes(x=chi_hour), data = chi_bike) +
  geom_histogram(binwidth = 1, color = 'white', fill = 'blue') +
  ggtitle('Chicago Rentals') +
  labs(x="Rentals By Hour")
