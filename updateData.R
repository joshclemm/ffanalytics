my_scrape <- scrape_data(
  src = c("CBS"),
  pos = c("QB", "RB", "WR", "TE", "K", "DST", "DL", "LB", "DB"),
                        season = 2023,
                       week = 0)

my_projections <-  ffanalytics::projections_table(my_scrape)

my_projections <- my_projections %>% ffanalytics::add_ecr()

my_projections <- my_projections %>% add_risk()

my_projections <- my_projections %>% ffanalytics::add_player_info()

write.csv(my_projections, 'projections.csv')

#library(ffanalytics)
#library(tidyr)
my_agg <- aggregate_stats(my_scrape)
my_agg <- my_agg %>% ffanalytics::add_player_info()

write.csv(my_agg,'agg.csv')
