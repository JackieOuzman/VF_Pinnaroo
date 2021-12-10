
library(dplyr)
library(tidyverse)
library(readr)
library(lubridate)
library(DT)
library(sp)


library(rgdal)
library(sf)

#install.packages("plotKML")
library(plotKML)
library(knitr)
library(png)

library(readxl)


library(ggmap)
library(maps)
library(mapdata)

library(raster)
#library(hms) Add these before I use them?
#library(plyr)

library(formattable)
library(ggpubr)




##################################################################################
####### subset data to VF area (based on when fenceID was active)   ##############
##################################################################################
fence1_GPS <- animal_GPS_data_sf_trans_clip %>% 
  filter(VF_area == "VF_area1")  
fence2_GPS <- animal_GPS_data_sf_trans_clip %>% 
  filter(VF_area == "VF_area2")
fence3_GPS <- animal_GPS_data_sf_trans_clip %>% 
  filter(VF_area == "VF_area3") 
fence4_GPS <- animal_GPS_data_sf_trans_clip %>% 
  filter(VF_area == "VF_area4") 


#Check below plots are checks


ggplot() +
  geom_sf(data = pinnaroo_paddock_area, color = "black", fill = NA) +
  geom_sf(data = pinnaroo_Vf_area, color = "black", fill = NA) +
  geom_sf(data = fence1_GPS ,alpha = 0.01) +
  theme_bw()+
  theme(legend.position = "none",
        axis.ticks = element_blank(), axis.text.x = element_blank(), axis.text.y = element_blank())+
  facet_wrap(VF_area~ fencesID)


ggplot() +
  geom_sf(data = pinnaroo_paddock_area, color = "black", fill = NA) +
  geom_sf(data = pinnaroo_Vf_area, color = "black", fill = NA) +
  geom_sf(data = fence2_GPS ,alpha = 0.01) +
  theme_bw()+
  theme(legend.position = "none",
        axis.ticks = element_blank(), axis.text.x = element_blank(), axis.text.y = element_blank())+
  facet_wrap(VF_area~ fencesID)

ggplot() +
  geom_sf(data = pinnaroo_paddock_area, color = "black", fill = NA) +
  geom_sf(data = pinnaroo_Vf_area, color = "black", fill = NA) +
  geom_sf(data = fence3_GPS ,alpha = 0.01) +
  theme_bw()+
  theme(legend.position = "none",
        axis.ticks = element_blank(), axis.text.x = element_blank(), axis.text.y = element_blank())+
  facet_wrap(VF_area~ fencesID)


ggplot() +
  geom_sf(data = pinnaroo_paddock_area, color = "black", fill = NA) +
  geom_sf(data = pinnaroo_Vf_area, color = "black", fill = NA) +
  geom_sf(data = fence4_GPS ,alpha = 0.01) +
  theme_bw()+
  theme(legend.position = "none",
        axis.ticks = element_blank(), axis.text.x = element_blank(), axis.text.y = element_blank())+
  facet_wrap(VF_area~ fencesID)



##########################################################################################################




# pull out day 1 for each VF for the vf mob note that some clipping has been done.

fence1_day1 <-filter(fence1_GPS, day_since_vf_start == 1)
fence2_day1 <-filter(fence2_GPS, day_since_vf_start == 1)
fence3_day1 <-filter(fence3_GPS, day_since_vf_start == 1)
fence4_day1 <-filter(fence4_GPS, day_since_vf_start == 1)



## just want the first 8 hours from each fence change
min(fence1_day1$local_time)+hours(8)
fence1_day1 <- fence1_day1 %>% filter(local_time <= ymd_hms("2021-10-07 23:59:00", tz= "Australia/Adelaide"))

min(fence2_day1$local_time)+hours(8)
fence2_day1 <- fence2_day1 %>% filter(local_time <= ymd_hms("2021-10-11 20:33:00", tz= "Australia/Adelaide"))

min(fence3_day1$local_time)+hours(8)
fence3_day1 <- fence3_day1 %>% filter(local_time <= ymd_hms("2021-10-12 17:03:00", tz= "Australia/Adelaide"))

min(fence4_day1$local_time)+hours(8)
fence4_day1 <- fence4_day1 %>%  filter(local_time <= ymd_hms("2021-10-17 17:33:00", tz= "Australia/Adelaide"))




fence1_day1 <-  fence1_day1 %>% 
  mutate(day_since_trial_start = 1)

fence2_day1 <-  fence2_day1 %>% 
  mutate(day_since_trial_start = 5)

fence3_day1 <-  fence3_day1 %>% 
  mutate(day_since_trial_start = 6)

fence4_day1 <-  fence4_day1 %>% 
  mutate(day_since_trial_start = 11)


fence1_4_day1 <- rbind(fence1_day1, fence2_day1,fence3_day1, fence4_day1 )


fence1_4_day1_select_days <-
  fence1_4_day1 %>% filter(date  == "2021-10-07" |
                           date  == "2021-10-11" |
                           date  == "2021-10-12" |
                           date  == "2021-10-17")


#```
str(fence1_4_day1_select_days)
unique(fence1_4_day1_select_days$day_since_trial_start)

fence1_4_day1_select_days %>% 
group_by(day_since_trial_start) %>% 
  summarise(min_time = min(local_time, na.rm= TRUE),
            max_time = max(local_time, na.rm= TRUE)) %>% 
  arrange(min_time)


#### Animal movement day 1 of each fence move for 8 hours

#```{r write up GPS plots image, echo=TRUE, message=FALSE, warning=FALSE}



unique(pinnaroo_Vf_area$day_since_trial_start)


ggplot() +
  geom_sf(data = pinnaroo_paddock_area, color = "black", fill = NA) +
  geom_sf(data = pinnaroo_Vf_area, color = "black", fill = NA) +
  geom_sf(data = fence1_4_day1_select_days ,alpha = 0.01) +
  theme_bw()+
  theme(legend.position = "none",
        axis.ticks = element_blank(), axis.text.x = element_blank(), axis.text.y = element_blank())+
  #labs(title= "Day1 of VF")+
  facet_wrap(.~ day_since_trial_start)

##########################################################################

#For each above plot Dana would like to know how what is the time window.

#```{r write up GPS plots time period, echo=TRUE, message=FALSE, warning=FALSE}
str(fence1_4_day1_select_days)
fence1_4_day1_select_days_time <- fence1_4_day1_select_days %>%
  dplyr::select(VF_area,local_time ) %>% 
  group_by(VF_area) %>% 
  summarise(min_local_time = min(local_time),
            max_local_time = max(local_time))
fence1_4_day1_select_days_time

fence1_4_day1_select_days_time <- as.data.frame(fence1_4_day1_select_days_time)


fence1_4_day1_select_days_time <-fence1_4_day1_select_days_time %>% 
  dplyr::select(VF_area,min_local_time, max_local_time )  %>% 
  arrange(min_local_time)



fence1_4_day1_select_days_time <- fence1_4_day1_select_days_time %>% 
  mutate(difference_in_time = max_local_time - min_local_time)

fence1_4_day1_select_days_time

```


