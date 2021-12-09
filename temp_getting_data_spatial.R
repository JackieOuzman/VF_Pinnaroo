#```{r write up GPS plots workings, message=FALSE, warning=FALSE, include=FALSE}

#need to make df into spatial object for graphing and try clipping to paddock boundary
# long_plains <- st_read("W:/VF/LongPlain/LP Blk Bound/LongPlain_GDA_internal_bound.shp")
# long_plains_Vf <- st_read("W:/VF/LongPlain/LP Blk Bound/LongPlainVF_bound.shp")
# long_plains_Vf_area <- st_read("W:/VF/LongPlain/LP Blk Bound/LongPlainVF_area_bound.shp")

pinnaroo_Vf_area <- st_read("W:/VF/Pinnaroo/activation_VF/Pinnaroo_VF_clip.shp")

#str(week1_2_3)


week1_2_3_sf <-
  st_as_sf(week1_2_3,
           coords = c("gpsData.lng", "gpsData.lat"),
           crs = 4326,
           agr = "constant")

week1_2_3_sf_trans <-
  st_transform(week1_2_3_sf, crs = 28354)
week1_2_3_sf_clip <-
  st_intersection(week1_2_3_sf_trans, long_plains)


fence1_GPS <- week1_2_3_sf_clip %>% 
  filter(fencesID_1 == "fence1")  
fence2_GPS <- week1_2_3_sf_clip %>% 
  filter(fencesID_1 == "fence2")
fence3_GPS <- week1_2_3_sf_clip %>% 
  filter(fencesID_1 == "fence3") 
fence3_deactive_GPS <- week1_2_3_sf_clip %>% 
  filter(fencesID_1 == "deactive_VF3") 



# pull out day 1 for each VF for the vf mob note that some clipping has been done.

fence1_day1 <-filter(fence1_GPS, day_since_vf_start == 1)
fence2_day1 <-filter(fence2_GPS, day_since_vf_start == 1)
fence3_day1 <-filter(fence3_GPS, day_since_vf_start == 1)
fence3_deactivated_day1 <-filter(fence3_deactive_GPS, day_since_vf_start == 1)



## just want the first 8 hours from each fence change
min(fence1_day1$local_time)+hours(8)
fence1_day1 <- fence1_day1 %>% filter(local_time <= ymd_hms("2020-10-21 23:07:00", tz= "Australia/Adelaide"))

min(fence2_day1$local_time)+hours(8)
fence2_day1 <- fence2_day1 %>% filter(local_time <= ymd_hms("2020-10-25 18:57:00", tz= "Australia/Adelaide"))

min(fence3_day1$local_time)+hours(8)
fence3_day1 <- fence3_day1 %>% filter(local_time <= ymd_hms("2020-10-30 16:07:00", tz= "Australia/Adelaide"))

min(fence3_deactivated_day1$local_time)+hours(8)
fence3_deactivated_day1 <- fence3_deactivated_day1 %>% 
  filter(local_time <= ymd_hms("2020-11-03 20:07:00", tz= "Australia/Adelaide"))



fence1_3_deactice3_day1 <- rbind(fence1_day1, fence2_day1,fence3_day1, fence3_deactivated_day1 )

fence1_day1 <-  fence1_day1 %>% 
  mutate(day_since_trial_start = 1)

fence2_day1 <-  fence2_day1 %>% 
  mutate(day_since_trial_start = 5)

fence3_day1 <-  fence1_day1 %>% 
  mutate(day_since_trial_start = 10)

fence3_deactivated_day1 <-  fence1_day1 %>% 
  mutate(day_since_trial_start = 14)

fence1_3_deactice3_day1 <-  fence1_3_deactice3_day1 %>% 
  mutate(day_since_trial_start = case_when(
    date == "2020-10-21" ~ 1,
    date == "2020-10-25" ~ 5,
    date == "2020-10-30" ~ 10,
    date == "2020-11-03" ~ 14
  ))

# get the control mob only


week1_2_3_sf_clip_control <- week1_2_3_sf_clip %>% 
  filter(VF_name == "Control")

#What are the dates for day 1 with the VF mob use these dates to filter the control mob
#unique(fence1_3_deactice3_day1$date)


#list_of_date <- list(unique(fence1_3_deactice3_day1$date)) #I dont know why this wont work??
#test <- week1_2_3_sf_clip_control %>% filter(date  %in% list_of_date)

week1_2_3_sf_clip_control_day1 <- week1_2_3_sf_clip_control %>% filter(date  == "2020-10-21" |
                                                                         date  == "2020-10-25" |
                                                                         date  == "2020-10-30" |
                                                                         date  == "2020-11-03")

week1_2_3_sf_clip_control_day1 <- week1_2_3_sf_clip_control_day1 %>% 
  mutate(day_since_trial_start = case_when(
    date == "2020-10-21" ~ 1,
    date == "2020-10-25" ~ 5,
    date == "2020-10-30" ~ 10,
    date == "2020-11-03" ~ 14
  ))

```