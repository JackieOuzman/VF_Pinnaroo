library(tidyverse)

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
                #cc_43,# not on list copied over?
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

