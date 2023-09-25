#Installing and loading R packages
#This part of the code installs and loads the necessary packages

#First, install the packages:

install.packages("devtools")
devtools::install_github("ropensci/refsplitr")
install.packages("rlang")
install.packages("ggmap",force = TRUE)
install.packages("igraph")
install.packages("janitor")

#Loading the necessary libraries:

library(refsplitr)
library(rlang)
library(ggplot2)
library(ggmap)
library(rworldmap)
library(igraph)
library(janitor)
library(RColorBrewer)


Googlemaps key

ggmap::register_google(key = "AIzaSyAOOLTz91HIEURDGQU-9_p3aDE2tgeQQpA", write = TRUE)



#Setting the working directory
#Copy and paste this command into the Console

setwd("/blue/anaporras/a.hernandez4")



#Splitting author records for ALL papers


biomaterials_refs <- references_read(data = "/blue/anaporras/a.hernandez4/WoS_Results_2",  # nolint
                                dir=TRUE,
                                include_all = FALSE)
biomaterials_clean <- authors_clean(biomaterials_refs)
biomaterials_refined <- authors_refine(biomaterials_clean$review,
                                    biomaterials_clean$prelim)


#Adding geolocation for All Papers

biomaterials_georef <- authors_georef(data=biomaterials_refined,
                                                 address_column = "address")


#Processing one journal at a time so we can make small progress without the code crashing

#Extracting refs, authors, and geolocation for Tissue Engineering Part B-Reviews

#Read references, extract and clean author names
TEng_refs <- references_read(data = "WoS_Results_sub/Tissue Engineering - Part B-Reviews.txt", 
                             dir=FALSE, 
                             include_all = FALSE)
TEng_clean <- authors_clean(TEng_refs)
TEng_refined <- authors_refine(TEng_clean$review,
                                    TEng_clean$prelim)

#Georeference author names
TEng_georef <- authors_georef(data=TEng_refined,address_column = "address")

#Save outputs
write.csv(TEng_refined, "/blue/anaporras/share/TEng_refined_refined.csv")

save(TEng_refined, file ="/blue/anaporras/share/TEng_refined.RData")


Extracting refs, authors, and geolocation for Regenerative Biomaterials

#Read references, extract and clean author names
RegBiomat_refs <- references_read(data = "WoS_Results_sub/Regenerative Biomaterials.txt", 
                             dir=FALSE, 
                             include_all = FALSE)
RegBiomat_clean <- authors_clean(RegBiomat_refs)
RegBiomat_refined <- authors_refine(RegBiomat_clean$review,
                                    RegBiomat_clean$prelim)

#Georeference author names
RegBiomat_georef <- authors_georef(data=RegBiomat_refined,address_column = "address")

#Save outputs
write.csv(RegBiomat_refined, "/blue/anaporras/share/RegBiomat_refined.csv")

save(RegBiomat_refined, file ="/blue/anaporras/share/RegBiomat_refined.RData")


#Extracting refs, authors, and geolocation for Materials Today Bio

#Read references, extract and clean author names
MatToday_refs <- references_read(data = "WoS_Results_sub/Materials Today Bio.txt", 
                             dir=FALSE, 
                             include_all = FALSE)
MatToday_clean <- authors_clean(MatToday_refs)
MatToday_refined <- authors_refine(MatToday_clean$review,
                                    MatToday_clean$prelim)

#Georeference author names
MatToday_georef <- authors_georef(data=MatToday_refined,address_column = "address")

#Save outputs
write.csv(MatToday_refined, "/blue/anaporras/share/MatToday_refined.csv")

save(MatToday_refined, file ="/blue/anaporras/share/MatToday_refined.RData")

#Extracting refs, authors, and geolocation for Journal of Tissue Engineering

#Read references, extract and clean author names
JournalTE_refs <- references_read(data = "WoS_Results_sub/Journal of Tissue Engineering.txt", 
                             dir=FALSE, 
                             include_all = FALSE)
JournalTE_clean <- authors_clean(JournalTE_refs)
JournalTE_refined <- authors_refine(JournalTE_clean$review,
                                    JournalTE_clean$prelim)

#Georeference author names
JournalTE_georef <- authors_georef(data=JournalTE_refined,address_column = "address")

#Save outputs
write.csv(JournalTE_refined, "/blue/anaporras/share/output_AMP/JournalTE_refined.csv")

save(JournalTE_refined, file ="/blue/anaporras/share/output_AMP/JournalTE_refined.RData")



#Extracting refs, authors, and geolocation for Materials Today Bio

#Read references, extract and clean author names
MatToday_refs <- references_read(data = "WoS_Results_sub/Materials Today Bio.txt", 
                             dir=FALSE, 
                             include_all = FALSE)
MatToday_clean <- authors_clean(MatToday_refs)
MatToday_refined <- authors_refine(MatToday_clean$review,
                                    MatToday_clean$prelim)

#Georeference author names
MatToday_georef <- authors_georef(data=MatToday_refined,address_column = "address")

#Save outputs
write.csv(MatToday_refined, "/blue/anaporras/share/MatToday_refined.csv")

save(MatToday_refined, file ="/blue/anaporras/share/MatToday_refined.RData")


#Extracting refs, authors, and geolocation for Biomaterials Research

#Read references, extract and clean author names
BiomatRes_refs <- references_read(data = "WoS_Results_sub/Biomaterials Research.txt", 
                             dir=FALSE, 
                             include_all = FALSE)
BiomatRes_clean <- authors_clean(BiomatRes_refs)
BiomatRes_refined <- authors_refine(BiomatRes_clean$review,
                                    BiomatRes_clean$prelim)

#Georeference author names
BiomatRes_georef <- authors_georef(data=BiomatRes_refined,address_column = "address")

#Save outputs
write.csv(BiomatRes_refined, "/blue/anaporras/share/output_AMP/BiomatRes_refined.csv")

save(BiomatRes_refined, file ="/blue/anaporras/share/output_AMP/BiomatRes_refined.RData")



#Extracting refs, authors, and geolocation for Biofabrication

#Read references, extract and clean author names
Biofab_refs <- references_read(data = "WoS_Results_sub/Biofabrication.txt", 
                             dir=FALSE, 
                             include_all = FALSE)
Biofab_clean <- authors_clean(Biofab_refs)
Biofab_refined <- authors_refine(Biofab_clean$review,
                                    Biofab_clean$prelim)

#Georeference author names
Biofab_georef <- authors_georef(data=Biofab_refined,address_column = "address")

#Save outputs
write.csv(Biofab_refined, "/blue/anaporras/share/output_AMP/Biofab_refined.csv")

save(Biofab_refined, file ="/blue/anaporras/share/output_AMP/Biofab_refined.RData")


#Saving the georef data objects created until now

save(Biofab_georef, file ="/blue/anaporras/share/output_AMP/Biofab_georef.RData")

save(BiomatRes_georef, file ="/blue/anaporras/share/output_AMP/BiomatRes_georef.RData")

save(JournalTE_georef, file = "/blue/anaporras/share/output_AMP/JournalTE_georef.RData")

save(MatToday_georef, file = "/blue/anaporras/share/output_AMP/MatToday_georef.RData")

save(RegBiomat_georef, file = "/blue/anaporras/share/output_AMP/RegBiomat_georef.RData")

save(TEng_georef, file= "/blue/anaporras/share/output_AMP/TEng_georef.RData")



#Merging the address lists from all the georef data objects

#can't merge the full objects, need to only merge the address lists

#Merging everything except ACS, Acta, IntJournal, and MatSciEng C
BiomatOnlyJournals_addresses <- rbind(AdvHM_georef$addresses, Bioactive_georef$addresses, Biofab_georef$addresses, Biomacromolecules_georef$addresses, Biomaterials_georef$addresses, BiomatRes_georef$addresses, JournalTE_georef$addresses, MatToday_georef$addresses, RegBiomat_georef$addresses, TEng_georef$addresses)

#Save that list
save(BiomatOnlyJournals_addresses, file= "/blue/anaporras/share/output_AMP/BiomatOnlyJournals_addresses.RData")