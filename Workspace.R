library("dplyr")
install.packages("lubridate")
library("lubridate")

# zone <- read_csv("additional_data/zones.csv")
# data <- read_csv("additional_data/HospitalBedsIndia.csv")
# colnames(data)[2] <- "state"
# data$state <- gsub("&", "and", data$state)
# zone <- select(zone, state, statecode)
# zone <- distinct(zone)
# new_data <- left_join(data, zone, by = "state")
# write.csv(new_data, "hospitalbedsWithStateCode.csv", row.names = FALSE)
# 
# zone <- read_csv("additional_data/zones.csv")
# data <- read_csv("additional_data/district_population_india_census2011.csv")
# colnames(data)[2] <- "state"
# zone <- select(zone, state, statecode)
# zone$state <- tolower(zone$state)
# data$state <- tolower(data$state)
# zone <- distinct(zone)
# new_data <- left_join(data, zone, by = "state")
# write.csv(new_data, "district_population_india_census2011WithStateCode.csv", row.names = FALSE)
# 
# zone <- read_csv("additional_data/zones.csv")
# data <- read_csv("additional_data/state_population_india_census2011.csv")
# colnames(data)[2] <- "state"
# data[12, "state"] <- "Telangana"
# zone <- select(zone, state, statecode)
# zone <- distinct(zone)
# new_data <- left_join(data, zone, by = "state")
# 
# new_data <- separate(new_data, Area, into = c("Area", "Area Unit"), sep = "\\s", extra = "merge")
# new_data <- separate(new_data, Density, into = c("Density", "Density Unit"), sep = "/", extra = "merge")
# new_data$Area <- as.numeric(gsub(",", "", new_data$Area))
# new_data$Density <- as.numeric(gsub(",", "", new_data$Density))
# write.csv(new_data, "state_population_india_census2011WithStateCode.csv", row.names = FALSE)

# data <- read_csv("Total confirmed cases deaths new cases new deaths by country.csv")
# data <- filter(data, location != "India")
# to_add <- read_csv("districts_daily_clean.csv")
# to_add <- to_add %>%
#     select(date, `New Confirmed`, `New deceased`, confirmed, deceased) %>%
#     group_by(date) 
# 
# summary <- to_add %>%
#     summarise(
#       new_cases = sum(`New Confirmed`),
#       new_deaths = sum(`New deceased`),
#       total_cases = sum(confirmed),
#       total_deaths= sum(deceased)
#     )
# 
# summary$date <- format(as.Date(summary$date, format = "%m/%d/%Y", "%Y-%m-%d"))
# summary <- arrange(summary, date)
# write.csv(summary, "toAdd.csv", row.names = FALSE)
# 
# data2 <- read_csv("toAdd.csv")
# data <- filter(data, location != "India")
# data <- bind_rows(data, data2)
# write.csv(data, "MLDataWithIndia.csv", row.names = FALSE)


data <- read_csv("patient_city_district_wise_data_may_5_date_formatted_clean.csv")
max(data$Age_Bracket, na.rm = TRUE)
ages <- distinct(data, Age_Bracket)
