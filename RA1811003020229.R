library(robotstxt)
library(rvest)
link<-"https://store.steampowered.com/"
web<-read_html(link)
library(dplyr)
Game_name<-web%>%html_nodes(".tab_item_name")%>%html_text()
Game_genre<-web%>%html_nodes(".tab_item_top_tags")%>%html_text()
Game_list<-data.frame(Game_name,Game_genre)
View(Game_list)



