library(tidyverse)
library(dplyr)
###################################################################################################
##########         Crop circle data pre trial ######
cc_59 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0059.CSV")
cc_58 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0058.CSV")
cc_57 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0057.CSV")
cc_56 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0056.CSV")
cc_55 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0055.CSV")
cc_54 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0054.CSV")
cc_53 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0053.CSV")
cc_52 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0052.CSV")
cc_51 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0051.CSV")
cc_50 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0050.CSV")
cc_49 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0049.CSV")
cc_48 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0048.CSV")
cc_47 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0047.CSV")
cc_46 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0046.CSV")
cc_45 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0045.CSV")
cc_44 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0044.CSV")
cc_42 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0042.CSV")
cc_41 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0041.CSV")
cc_40 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0040.CSV")
cc_39 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0039.CSV")
cc_38 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0038.CSV")
cc_37 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0037.CSV")
cc_36 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0036.CSV")
cc_35 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0035.CSV")
cc_34 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0034.CSV")
cc_33 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0033.CSV")
cc_32 <- read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0032.CSV")

cc_all <- rbind(cc_32,
                cc_33,
                cc_34,
                cc_35,
                cc_36,
                cc_37,
                cc_38,
                cc_39,
                cc_40,
                cc_41,
                cc_42,
                #cc_43,# not on list copied over? - nope all good its should not be on list
                cc_44,
                cc_45,
                cc_46,
                cc_47,
                cc_48,
                cc_49,
                cc_51,
                cc_52,
                cc_53,
                cc_54,
                cc_55,
                cc_56,
                cc_57,
                cc_58,
                cc_59)


write.csv(cc_all, "W://VF/Pinnaroo/CC files/Pre trial/merge_jax/cc_all.csv", row.names=FALSE)


heath_61 <- read.csv("W://VF/Pinnaroo/Heaths lucerne/CC Lucerne/MAP0061.CSV")
heath_62 <- read.csv("W://VF/Pinnaroo/Heaths lucerne/CC Lucerne/MAP0062.CSV")
heath_63 <- read.csv("W://VF/Pinnaroo/Heaths lucerne/CC Lucerne/MAP0063.CSV")
heath_64 <- read.csv("W://VF/Pinnaroo/Heaths lucerne/CC Lucerne/MAP0064.CSV")
heath_65 <- read.csv("W://VF/Pinnaroo/Heaths lucerne/CC Lucerne/MAP0065.CSV")
heath_66 <- read.csv("W://VF/Pinnaroo/Heaths lucerne/CC Lucerne/MAP0066.CSV")

heath_all <- rbind(heath_61, heath_62, heath_63, heath_64, heath_65, heath_66)

write.csv(heath_all, "W://VF/Pinnaroo/Heaths lucerne/CC Lucerne/merge_jaxs/heath_all_MAP.csv", row.names=FALSE)



###################################################################################################
##########         Phenom data pre trial ######


heath_62P <- read.csv("W://VF/Pinnaroo/Heaths lucerne/Phenom Lucerne/MAP0062P.CSV")
heath_63P <- read.csv("W://VF/Pinnaroo/Heaths lucerne/Phenom Lucerne/MAP0063P.CSV")
heath_64P <- read.csv("W://VF/Pinnaroo/Heaths lucerne/Phenom Lucerne/MAP0064P.CSV")
heath_65P <- read.csv("W://VF/Pinnaroo/Heaths lucerne/Phenom Lucerne/MAP0065P.CSV")
heath_66P <- read.csv("W://VF/Pinnaroo/Heaths lucerne/Phenom Lucerne/MAP0066P.CSV")
heath_67P <- read.csv("W://VF/Pinnaroo/Heaths lucerne/Phenom Lucerne/MAP0067P.CSV")

heath_allP <- rbind(heath_62P, heath_63P, heath_64P, heath_65P, heath_66P, heath_67P)
unique(heath_allP$SENSOR_ADDR)

heath_allP_sensor1 <- filter(heath_allP, SENSOR_ADDR == "1")
heath_allP_sensor2 <- filter(heath_allP, SENSOR_ADDR == "2")

write.csv(heath_allP_sensor1, "W://VF/Pinnaroo/Heaths lucerne/Phenom Lucerne/merge_jaxs/heath_all_Pheonm_sensor1.csv", row.names=FALSE)
write.csv(heath_allP_sensor2, "W://VF/Pinnaroo/Heaths lucerne/Phenom Lucerne/merge_jaxs/heath_all_Pheonm_sensor2.csv", row.names=FALSE)

############################################################################

Phen_MAP0033 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0033.CSV")
Phen_MAP0034 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0034.CSV")
Phen_MAP0035 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0035.CSV")
Phen_MAP0036 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0036.CSV")
Phen_MAP0037 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0037.CSV")
Phen_MAP0038 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0038.CSV")
Phen_MAP0039 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0039.CSV")
Phen_MAP0040 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0040.CSV")
Phen_MAP0041 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0041.CSV")
Phen_MAP0042 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0042.CSV")
Phen_MAP0043 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0043.CSV")
Phen_MAP0044 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0044.CSV")
Phen_MAP0045 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0045.CSV")
Phen_MAP0046 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0046.CSV")
Phen_MAP0047 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0047.CSV")
Phen_MAP0048 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0048.CSV")
Phen_MAP0049 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0049.CSV")
Phen_MAP0050 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0050.CSV")
Phen_MAP0051 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0051.CSV")
Phen_MAP0052 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0052.CSV")
Phen_MAP0053 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0053.CSV")
Phen_MAP0054 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0054.CSV")
Phen_MAP0055 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0055.CSV")
Phen_MAP0056 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0056.CSV")
Phen_MAP0057 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0057.CSV")
Phen_MAP0058 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0058.CSV")
Phen_MAP0059 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0059.CSV")
Phen_MAP0060 <-read.csv("W://VF/Pinnaroo/CC files/Pre trial/MAP0060.CSV")

Phen_all <- rbind(Phen_MAP0060, 
                  Phen_MAP0059, 
                  Phen_MAP0058, 
                  Phen_MAP0057, 
                  Phen_MAP0056, 
                  Phen_MAP0055, 
                  Phen_MAP0054, 
                  Phen_MAP0053, 
                  Phen_MAP0052, 
                  Phen_MAP0051, 
                  Phen_MAP0050, 
                  Phen_MAP0049, 
                  Phen_MAP0048, 
                  Phen_MAP0047,
                  Phen_MAP0046,
                  Phen_MAP0045,
                  Phen_MAP0044,
                  Phen_MAP0043,
                  Phen_MAP0042,
                  Phen_MAP0041,
                  Phen_MAP0040,
                  Phen_MAP0039,
                  Phen_MAP0038,
                  Phen_MAP0037,
                  Phen_MAP0036,
                  Phen_MAP0035,
                  Phen_MAP0034,
                  Phen_MAP0033)
                  
                  
                  
                  
                  
unique(Phen_all$SENSOR_ADDR)

heath_allP_sensor1 <- filter(heath_allP, SENSOR_ADDR == "1")
heath_allP_sensor2 <- filter(heath_allP, SENSOR_ADDR == "2")



#########################################################################################################
### main paddocks 
## "W:\VF\Pinnaroo\Phenom files\Pre trial\MAP0033.CSV"
main_trial_pre_phenom <- "W:/VF/Pinnaroo/Phenom files/Pre trial/"

Phen_MAP0033 <-read.csv(paste0(main_trial_pre_phenom, "MAP0033.CSV"))
Phen_MAP0034 <-read.csv(paste0(main_trial_pre_phenom,"MAP0034.CSV"))
Phen_MAP0035 <-read.csv(paste0(main_trial_pre_phenom,"MAP0035.CSV"))
Phen_MAP0036 <-read.csv(paste0(main_trial_pre_phenom,"MAP0036.CSV"))
Phen_MAP0037 <-read.csv(paste0(main_trial_pre_phenom,"MAP0037.CSV"))
Phen_MAP0038 <-read.csv(paste0(main_trial_pre_phenom,"MAP0038.CSV"))
Phen_MAP0039 <-read.csv(paste0(main_trial_pre_phenom,"MAP0039.CSV"))
Phen_MAP0040 <-read.csv(paste0(main_trial_pre_phenom,"MAP0040.CSV"))
Phen_MAP0041 <-read.csv(paste0(main_trial_pre_phenom,"MAP0041.CSV"))
Phen_MAP0042 <-read.csv(paste0(main_trial_pre_phenom,"MAP0042.CSV"))
Phen_MAP0043 <-read.csv(paste0(main_trial_pre_phenom,"MAP0043.CSV"))
Phen_MAP0044 <-read.csv(paste0(main_trial_pre_phenom,"MAP0044.CSV"))
Phen_MAP0045 <-read.csv(paste0(main_trial_pre_phenom,"MAP0045.CSV"))
Phen_MAP0046 <-read.csv(paste0(main_trial_pre_phenom,"MAP0046.CSV"))
Phen_MAP0047 <-read.csv(paste0(main_trial_pre_phenom,"MAP0047.CSV"))
Phen_MAP0048 <-read.csv(paste0(main_trial_pre_phenom,"MAP0048.CSV"))
Phen_MAP0049 <-read.csv(paste0(main_trial_pre_phenom,"MAP0049.CSV"))
Phen_MAP0050 <-read.csv(paste0(main_trial_pre_phenom,"MAP0050.CSV"))
Phen_MAP0051 <-read.csv(paste0(main_trial_pre_phenom,"MAP0051.CSV"))
Phen_MAP0052 <-read.csv(paste0(main_trial_pre_phenom,"MAP0052.CSV"))
Phen_MAP0053 <-read.csv(paste0(main_trial_pre_phenom,"MAP0053.CSV"))
Phen_MAP0054 <-read.csv(paste0(main_trial_pre_phenom,"MAP0054.CSV"))
Phen_MAP0055 <-read.csv(paste0(main_trial_pre_phenom,"MAP0055.CSV"))
Phen_MAP0056 <-read.csv(paste0(main_trial_pre_phenom,"MAP0056.CSV"))
Phen_MAP0057 <-read.csv(paste0(main_trial_pre_phenom,"MAP0057.CSV"))
Phen_MAP0058 <-read.csv(paste0(main_trial_pre_phenom,"MAP0058.CSV"))
Phen_MAP0059 <-read.csv(paste0(main_trial_pre_phenom,"MAP0059.CSV"))


Phen_all_main_pre <- rbind(Phen_MAP0033, 
                 Phen_MAP0034,
                 Phen_MAP0035,
                 Phen_MAP0036,
                 Phen_MAP0037,
                 Phen_MAP0038,
                 Phen_MAP0039,
                 Phen_MAP0040,
                 Phen_MAP0041,
                 Phen_MAP0042,                 
                 Phen_MAP0043,                 
                 Phen_MAP0044,                 
                 Phen_MAP0045,                 
                 Phen_MAP0046,                 
                 Phen_MAP0047,                 
                 Phen_MAP0048,                 
                 Phen_MAP0049,                 
                 Phen_MAP0050,
                 Phen_MAP0051, 
                 Phen_MAP0052, 
                 Phen_MAP0053, 
                 Phen_MAP0054, 
                 Phen_MAP0055, 
                 Phen_MAP0056,
                 Phen_MAP0057, 
                 Phen_MAP0058, 
                 Phen_MAP0059) 
                 
unique(Phen_all_main_pre$SENSOR_ADDR)

Phen_all_main_pre_sensor1 <- filter(Phen_all_main_pre, SENSOR_ADDR == "1")
Phen_all_main_preP_sensor2 <- filter(Phen_all_main_pre, SENSOR_ADDR == "2")                


write.csv(Phen_all_main_pre_sensor1, "W:/VF/Pinnaroo/Phenom files/Pre trial/Phenom_pre_trial_merge_jaxs/pre_trial_Pheonm_sensor1.csv", row.names=FALSE)
write.csv(Phen_all_main_preP_sensor2, "W:/VF/Pinnaroo/Phenom files/Pre trial/Phenom_pre_trial_merge_jaxs/pre_trial_Pheonm_sensor2.csv", row.names=FALSE)


#########################################################################################################
###################################################################################################
##########         Phenom data post trial  Damian has merged the files ######
Phenom_post_merge <- read.csv("W://VF/Pinnaroo/Phenom files/Post trial/Pinnaroo Phenom Post merged.csv")

Phenom_post_merge_sensor1 <- filter(Phenom_post_merge, SENSOR_ADDR == "01")
Phenom_post_merge_sensor2 <- filter(Phenom_post_merge, SENSOR_ADDR == "02")                

write.csv(Phenom_post_merge_sensor1,"W://VF/Pinnaroo/Phenom files/Post trial/merged_jax/post_trial_Pheonm_sensor1.csv", row.names=FALSE)
write.csv(Phenom_post_merge_sensor2,"W://VF/Pinnaroo/Phenom files/Post trial/merged_jax/post_trial_Pheonm_sensor2.csv", row.names=FALSE)
