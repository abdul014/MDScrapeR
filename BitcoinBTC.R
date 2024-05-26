message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)

clean_numeric <- function(x) as.numeric(gsub("[^0-9.-]", "", x))

message('Scraping Data')
url <- "https://coinmarketcap.com/"
webpage <- read_html(url)

btc_row <- webpage %>% html_node(xpath = '//tr[td//a[contains(@href, "/currencies/bitcoin")]]')

name <- btc_row %>% html_node('td:nth-child(3) div a.cmc-link') %>% html_text(trim = TRUE)
price <- btc_row %>% html_node('td:nth-child(4)') %>% html_text(trim = TRUE)
change_1h <- btc_row %>% html_node('td:nth-child(5) span') %>% html_text(trim = TRUE)
change_24h <- btc_row %>% html_node('td:nth-child(6) span') %>% html_text(trim = TRUE)
change_7d <- btc_row %>% html_node('td:nth-child(7) span') %>% html_text(trim = TRUE)
market_cap <- btc_row %>% html_node('td:nth-child(8)') %>% html_text(trim = TRUE)
volume_24h <- btc_row %>% html_node('td:nth-child(9)') %>% html_text(trim = TRUE)
circulating_supply <- btc_row %>% html_node('td:nth-child(10)') %>% html_text(trim = TRUE)

price <- clean_numeric(price)
change_1h <- clean_numeric(change_1h)
change_24h <- clean_numeric(change_24h)
change_7d <- clean_numeric(change_7d)
market_cap <- clean_numeric(market_cap)
volume_24h <- clean_numeric(volume_24h)
circulating_supply <- clean_numeric(circulating_supply)

price[is.na(price)] <- 0
change_1h[is.na(change_1h)] <- 0
change_24h[is.na(change_24h)] <- 0
change_7d[is.na(change_7d)] <- 0
market_cap[is.na(market_cap)] <- 0
volume_24h[is.na(volume_24h)] <- 0
circulating_supply[is.na(circulating_supply)] <- 0

time <- Sys.time()

btc_data <- data.frame(
  time = time,
  name = name,
  price = price,
  change_1h = change_1h,
  change_24h = change_24h,
  change_7d = change_7d,
  market_cap = market_cap,
  volume_24h = volume_24h,
  circulating_supply = circulating_supply
)

# MONGODB
message('Input Data to MongoDB Atlas')
atlas_conn <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_conn$insert(btc_data)
rm(atlas_conn)
