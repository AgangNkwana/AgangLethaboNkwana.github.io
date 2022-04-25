#using rbind to combine the 12 dataframes
df_202004_202104 <- rbind(X2020_04_divvy_tripdata,X2020_05_divvy_tripdata,X2020_06_divvy_tripdata,X2020_07_divvy_tripdata,X2020_08_divvy_tripdata,X2020_09_divvy_tripdata,X2020_10_divvy_tripdata,X2020_11_divvy_tripdata,X2020_12_divvy_tripdata,X2021_01_divvy_tripdata,X2021_02_divvy_tripdata,X2021_03_divvy_tripdata,X2021_04_divvy_tripdata)
View(df_202004_202104)
write.csv(df_202004_202104,"2020_04-2021_04 tripdata.csv")

#View variable names
glimpse(X2020_04_2021_04_tripdata)

#summary statistics
head(X2020_04_2021_04_tripdata)
str(X2020_04_2021_04_tripdata)

#Adding column with week days
X2020_04_2021_04_tripdata$week_days <- format(as.Date(X2020_04_2021_04_tripdata$started_at),"%A") 

#Arrange trip data by ride Id
df_tripdata <- X2020_04_2021_04_tripdata %>% 
  arrange(ride_id)
View(df_tripdata)

#remove columns with null values
df_tripdata <- na.omit(df_tripdata)

#rename rideable_type to ride_type
df_tripdata <- rename(df_tripdata,ride_type = rideable_type)

#rename member_casual to usertype

df_tripdata <- rename(df_tripdata,usertype = member_casual)

#add column ride times
df_tripdata <- mutate(df_tripdata,ride_length = ended_at - started_at)

#order data by ride length

df_tripdata <- df_tripdata %>% 
  arrange(ride_length)

#remove all rows where ride length is negative

df_tripdata <- df_tripdata %>% 
  filter(ride_length > 0)

#remove rows where start station id is equal to end station id

df_tripdata <- df_tripdata %>% 
  filter(start_station_id != end_station_id)


#combine start latitude and end longitude into one column
df_tripdata <- 
  unite(df_tripdata,"start_lat_lng",start_lat,start_lng,sep = "")

#combine end longitude and end end latitude
df_tripdata <- 
  unite(df_tripdata,"end_lat_lng",end_lat,end_lng,sep= "")

#mean statistic for ride type length
df1_mean <- df_tripdata %>%  group_by(ride_type) %>% 
  summarize(mean_ride_length = mean(ride_length))
View(df1_mean)

#mean statistic for usertype length
df2_mean <- df_tripdata %>% group_by(usertype) %>% 
  summarize(mean_usertype_length = mean(ride_length))
View(df2_mean)


write.csv(df_tripdata,"2020_04-2021_04-clean.csv")
write.csv(df1_mean,"Ride_type_ride_length_mean.csv")
write.csv(df2_mean,"usertype_ride_length_mean.csv")


# bar Graph representing usertype"s count
ggplot(data = X2020_04_2021_04_clean) + geom_bar(aes(x = usertype,fill = usertype))

ggplot(data = X2020_04_2021_04_clean) + geom_bar(aes(x = usertype)) + facet_wrap(~ride_type)

ggplot(data = X2020_04_2021_04_clean) + geom_bar(aes(x = usertype)) + facet_wrap(~started_at)


#Bar graph comparing ride_type's count

ggplot(data = X2020_04_2021_04_clean) + geom_bar(aes(x = ride_type,fill = ride_type))

#Graph representing relationship between weekdays
ggplot(data = X2020_04_2021_04_clean) + geom_bar(aes(x = week_days,fill = week_days))
ggplot(data = X2020_04_2021_04_clean) + geom_boxplot(aes(x = usertype,y = ride_length)) + facet_wrap(~ride_type)
ggplot(data = X2020_04_2021_04_clean) + geom_point(aes(x = usertype,y = ride_length))



