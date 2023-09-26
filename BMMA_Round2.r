#Completing meta-analysis for the other 16 Journals (Not Biomaterials-Only)

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

#Extracting refs, authors, and geolocation for 1 EnergyChem

#Read references, extract and clean author names
EnergyChem_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/EnergyChem.txt", 
                                   dir=FALSE, 
                                   include_all = FALSE)
EnergyChem_clean <- authors_clean(EnergyChem_refs)
EnergyChem_refined <- authors_refine(EnergyChem_clean$review,
                                     EnergyChem_clean$prelim)

#Georeference author names
EnergyChem_georef <- authors_georef(data=EnergyChem_refined,address_column = "address")

#Save outputs
write.csv(EnergyChem_refined, "/blue/anaporras/share/new_outputs/EnergyChem_refined_refined.csv")

save(EnergyChem_refined, file ="/blue/anaporras/share/new_outputs/EnergyChem_refined.RData")
save(EnergyChem_georef, file ="/blue/anaporras/share/new_outputs/EnergyChem_georef.RData")


#Extracting refs, authors, and geolocation for 2 NatureReviewsMaterials

#Read references, extract and clean author names
NatureReviewsMaterials_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/NatureReviewsMaterials.txt", 
                                               dir=FALSE, 
                                               include_all = FALSE)
NatureReviewsMaterials_clean <- authors_clean(NatureReviewsMaterials_refs)
NatureReviewsMaterials_refined <- authors_refine(NatureReviewsMaterials_clean$review,
                                                 NatureReviewsMaterials_clean$prelim)

#Georeference author names
NatureReviewsMaterials_georef <- authors_georef(data=NatureReviewsMaterials_refined,address_column = "address")

#Save outputs
write.csv(NatureReviewsMaterials_refined, "/blue/anaporras/share/new_outputs/NatureReviewsMaterials_refined_refined.csv")


save(NatureReviewsMaterials_refined, file ="/blue/anaporras/share/new_outputs/NatureReviewsMaterials_refined.RData")
save(NatureReviewsMaterials_georef, file ="/blue/anaporras/share/new_outputs/NatureReviewsMaterials_georef.RData")


#Extracting refs, authors, and geolocation for  3 Advanced Functional Materials

#Read references, extract and clean author names
Advanced_Functional_Materials_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Advanced Functional Materials", 
                                                      dir=TRUE, 
                                                      include_all = FALSE)
Advanced_Functional_Materials_clean <- authors_clean(Advanced_Functional_Materials_refs)
Advanced_Functional_Materials_refined <- authors_refine(Advanced_Functional_Materials_clean$review,
                                                        Advanced_Functional_Materials_clean$prelim)

#Georeference author names
Advanced_Functional_Materials_georef <- authors_georef(data=Advanced_Functional_Materials_refined,address_column = "address")

#Save outputs
write.csv(Advanced_Functional_Materials_refined, "/blue/anaporras/share/new_outputs/Advanced_Functional_Materials_refined_refined.csv")


save(Advanced_Functional_Materials_refined, file ="/blue/anaporras/share/new_outputs/Advanced_Functional_Materials_refined.RData")
save(Advanced_Functional_Materials_georef, file ="/blue/anaporras/share/new_outputs/Advanced_Functional_Materialsf_georef.RData")


# Extracting refs, authors, and geolocation for 4 Materials Today Nano

# Read references, extract and clean author names
MaterialsTodayNano_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Materials Today Nano.txt", dir=FALSE, include_all = FALSE)
MaterialsTodayNano_clean <- authors_clean(MaterialsTodayNano_refs)
MaterialsTodayNano_refined <- authors_refine(MaterialsTodayNano_clean$review, MaterialsTodayNano_clean$prelim)

# Georeference author names
MaterialsTodayNano_georef <- authors_georef(data=MaterialsTodayNano_refined, address_column = "address")

# Save outputs
write.csv(MaterialsTodayNano_refined, "/blue/anaporras/share/new_outputs/MaterialsTodayNano_refined.csv")
save(MaterialsTodayNano_refined, file ="/blue/anaporras/share/new_outputs/MaterialsTodayNano_refined.RData")
save(MaterialsTodayNano_georef, file ="/blue/anaporras/share/new_outputs/MaterialsTodayNano_georef.RData")

# Extracting refs, authors, and geolocation for 5 Biochar

# Read references, extract and clean author names
Biochar_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Biochar.txt", dir=FALSE, include_all = FALSE)
Biochar_clean <- authors_clean(Biochar_refs)
Biochar_refined <- authors_refine(Biochar_clean$review, Biochar_clean$prelim)

# Georeference author names
Biochar_georef <- authors_georef(data=Biochar_refined, address_column = "address")

# Save outputs
write.csv(Biochar_refined, "/blue/anaporras/share/new_outputs/Biochar_refined.csv")
save(Biochar_refined, file ="/blue/anaporras/share/new_outputs/Biochar_refined.RData")
save(Biochar_georef, file ="/blue/anaporras/share/new_outputs/Biochar_georef.RData")

# Extracting refs, authors, and geolocation for 6 APL Bioengineering

# Read references, extract and clean author names
APLBioengineering_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/APL Bioengineering.txt", dir=FALSE, include_all = FALSE)
APLBioengineering_clean <- authors_clean(APLBioengineering_refs)
APLBioengineering_refined <- authors_refine(APLBioengineering_clean$review, APLBioengineering_clean$prelim)

# Georeference author names
APLBioengineering_georef <- authors_georef(data=APLBioengineering_refined, address_column = "address")

# Save outputs
write.csv(APLBioengineering_refined, "/blue/anaporras/share/new_outputs/APLBioengineering_refined.csv")
save(APLBioengineering_refined, file ="/blue/anaporras/share/new_outputs/APLBioengineering_refined.RData")
save(APLBioengineering_georef, file ="/blue/anaporras/share/new_outputs/APLBioengineering_georef.RData")

# Extracting refs, authors, and geolocation for 7 Materials Today Chemistry

# Read references, extract and clean author names
MaterialsTodayChemistry_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Materials Today Chemistry.txt", dir=FALSE, include_all = FALSE)
MaterialsTodayChemistry_clean <- authors_clean(MaterialsTodayChemistry_refs)
MaterialsTodayChemistry_refined <- authors_refine(MaterialsTodayChemistry_clean$review, MaterialsTodayChemistry_clean$prelim)

# Georeference author names
MaterialsTodayChemistry_georef <- authors_georef(data=MaterialsTodayChemistry_refined, address_column = "address")

# Save outputs
write.csv(MaterialsTodayChemistry_refined, "/blue/anaporras/share/new_outputs/MaterialsTodayChemistry_refined.csv")
save(MaterialsTodayChemistry_refined, file ="/blue/anaporras/share/new_outputs/MaterialsTodayChemistry_refined.RData")
save(MaterialsTodayChemistry_georef, file ="/blue/anaporras/share/new_outputs/MaterialsTodayChemistry_georef.RData")

# Extracting refs, authors, and geolocation for 8 Food Packaging and Shelf Life

# Read references, extract and clean author names
FoodPackagingShelfLife_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Food Packaging and Shelf Life.txt", dir=FALSE, include_all = FALSE)
FoodPackagingShelfLife_clean <- authors_clean(FoodPackagingShelfLife_refs)
FoodPackagingShelfLife_refined <- authors_refine(FoodPackagingShelfLife_clean$review, FoodPackagingShelfLife_clean$prelim)

# Georeference author names
FoodPackagingShelfLife_georef <- authors_georef(data=FoodPackagingShelfLife_refined, address_column = "address")

# Save outputs
write.csv(FoodPackagingShelfLife_refined, "/blue/anaporras/share/new_outputs/FoodPackagingShelfLife_refined.csv")
save(FoodPackagingShelfLife_refined, file ="/blue/anaporras/share/new_outputs/FoodPackagingShelfLife_refined.RData")
save(FoodPackagingShelfLife_georef, file ="/blue/anaporras/share/new_outputs/FoodPackagingShelfLife_georef.RData")

# Extracting refs, authors, and geolocation for 9 Interface Focus

# Read references, extract and clean author names
InterfaceFocus_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Interface Focus.txt", dir=FALSE, include_all = FALSE)
InterfaceFocus_clean <- authors_clean(InterfaceFocus_refs)
InterfaceFocus_refined <- authors_refine(InterfaceFocus_clean$review, InterfaceFocus_clean$prelim)

# Georeference author names
InterfaceFocus_georef <- authors_georef(data=InterfaceFocus_refined, address_column = "address")

# Save outputs
write.csv(InterfaceFocus_refined, "/blue/anaporras/share/new_outputs/InterfaceFocus_refined.csv")
save(InterfaceFocus_refined, file ="/blue/anaporras/share/new_outputs/InterfaceFocus_refined.RData")
save(InterfaceFocus_georef, file ="/blue/anaporras/share/new_outputs/InterfaceFocus_georef.RData")

# Extracting refs, authors, and geolocation for 10 Engineering Science and Technology, an International Journal

# Read references, extract and clean author names
EngSciTechIntlJour_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Engineering Science and Technology, an International Journal.txt", dir=FALSE, include_all = FALSE)
EngSciTechIntlJour_clean <- authors_clean(EngSciTechIntlJour_refs)
EngSciTechIntlJour_refined <- authors_refine(EngSciTechIntlJour_clean$review, EngSciTechIntlJour_clean$prelim)

# Georeference author names
EngSciTechIntlJour_georef <- authors_georef(data=EngSciTechIntlJour_refined, address_column = "address")

# Save outputs
write.csv(EngSciTechIntlJour_refined, "/blue/anaporras/share/new_outputs/EngSciTechIntlJour_refined.csv")
save(EngSciTechIntlJour_refined, file ="/blue/anaporras/share/new_outputs/EngSciTechIntlJour_refined.RData")
save(EngSciTechIntlJour_georef, file ="/blue/anaporras/share/new_outputs/EngSciTechIntlJour_georef.RData")

# Extracting refs, authors, and geolocation for 11 Journal of Science Advanced Materials and Devices
 
# Read references, extract and clean author names
JourSciAdvMatDevices_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Journal of Science Advanced Materials and Devices.txt", dir=FALSE, include_all = FALSE)
JourSciAdvMatDevices_clean <- authors_clean(JourSciAdvMatDevices_refs)
JourSciAdvMatDevices_refined <- authors_refine(JourSciAdvMatDevices_clean$review, JourSciAdvMatDevices_clean$prelim)

# Georeference author names
JourSciAdvMatDevices_georef <- authors_georef(data=JourSciAdvMatDevices_refined, address_column = "address")

# Save outputs
write.csv(JourSciAdvMatDevices_refined, "/blue/anaporras/share/new_outputs/JourSciAdvMatDevices_refined.csv")
save(JourSciAdvMatDevices_refined, file ="/blue/anaporras/share/new_outputs/JourSciAdvMatDevices_refined.RData")
save(JourSciAdvMatDevices_georef, file ="/blue/anaporras/share/new_outputs/JourSciAdvMatDevices_georef.RData")

# Extracting refs, authors, and geolocation for 12 Current Opinion in Biomedical Engineering
 
# Read references, extract and clean author names
CurrOpinBiomedEng_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Current Opinion in Biomedical Engineering.txt", dir=FALSE, include_all = FALSE)
CurrOpinBiomedEng_clean <- authors_clean(CurrOpinBiomedEng_refs)
CurrOpinBiomedEng_refined <- authors_refine(CurrOpinBiomedEng_clean$review, CurrOpinBiomedEng_clean$prelim)

# Georeference author names
CurrOpinBiomedEng_georef <- authors_georef(data=CurrOpinBiomedEng_refined, address_column = "address")

# Save outputs
write.csv(CurrOpinBiomedEng_refined, "/blue/anaporras/share/new_outputs/CurrOpinBiomedEng_refined.csv")
save(CurrOpinBiomedEng_refined, file ="/blue/anaporras/share/new_outputs/CurrOpinBiomedEng_refined.RData")
save(CurrOpinBiomedEng_georef, file ="/blue/anaporras/share/new_outputs/CurrOpinBiomedEng_georef.RData")

#Extracting refs, authors, and geolocation for 13 Small

#Read references, extract and clean author names
Small_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Small", 
                              dir=TRUE, 
                              include_all = FALSE)
Small_clean <- authors_clean(Small_refs)
Small_refined <- authors_refine(Small_clean$review,
                                Small_clean$prelim)

#Georeference author names
Small_georef <- authors_georef(data=Small_refined,address_column = "address")

#Save outputs
write.csv(Small_refined, "/blue/anaporras/share/new_outputs/Small_refined_refined.csv")

save(Small_refined, file ="/blue/anaporras/share/new_outputs/Small_refined.RData")
save(Small_georef, file ="/blue/anaporras/share/new_outputs/Small_georef.RData")

# Extracting refs, authors, and geolocation for 14 Journal of Colloid and Interface Science

# Read references, extract and clean author names
JournalOfColloidAndInterfaceScience_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Journal of Colloid and Interface Science", 
                                                            dir=TRUE, 
                                                            include_all = FALSE)
JournalOfColloidAndInterfaceScience_clean <- authors_clean(JournalOfColloidAndInterfaceScience_refs)
JournalOfColloidAndInterfaceScience_refined <- authors_refine(JournalOfColloidAndInterfaceScience_clean$review,
                                                              JournalOfColloidAndInterfaceScience_clean$prelim)

# Georeference author names
JournalOfColloidAndInterfaceScience_georef <- authors_georef(data=JournalOfColloidAndInterfaceScience_refined,address_column = "address")

# Save outputs
write.csv(JournalOfColloidAndInterfaceScience_refined, "/blue/anaporras/share/new_outputs/JournalOfColloidAndInterfaceScience_refined.csv")

save(JournalOfColloidAndInterfaceScience_refined, file ="/blue/anaporras/share/new_outputs/JournalOfColloidAndInterfaceScience_refined.RData")
save(JournalOfColloidAndInterfaceScience_georef, file ="/blue/anaporras/share/new_outputs/JournalOfColloidAndInterfaceScience_georef.RData")


# Extracting refs, authors, and geolocation for 15 Journal of the Royal Society Interface

# Read references, extract and clean author names
JournalOfTheRoyalSocietyInterface_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Journal of the Royal Society Interface", 
                                                          dir=TRUE, 
                                                          include_all = FALSE)
JournalOfTheRoyalSocietyInterface_clean <- authors_clean(JournalOfTheRoyalSocietyInterface_refs)
JournalOfTheRoyalSocietyInterface_refined <- authors_refine(JournalOfTheRoyalSocietyInterface_clean$review,
                                                            JournalOfTheRoyalSocietyInterface_clean$prelim)

# Georeference author names
JournalOfTheRoyalSocietyInterface_georef <- authors_georef(data=JournalOfTheRoyalSocietyInterface_refined,address_column = "address")

# Save outputs
write.csv(JournalOfTheRoyalSocietyInterface_refined, "/blue/anaporras/share/new_outputs/JournalOfTheRoyalSocietyInterface_refined.csv")

save(JournalOfTheRoyalSocietyInterface_refined, file ="/blue/anaporras/share/new_outputs/JournalOfTheRoyalSocietyInterface_refined.RData")
save(JournalOfTheRoyalSocietyInterface_georef, file ="/blue/anaporras/share/new_outputs/JournalOfTheRoyalSocietyInterface_georef.RData")


# Extracting refs, authors, and geolocation for 16 Journal of Materials Research and Technology

# Read references, extract and clean author names
JournalOfMaterialsResearchAndTechnology_refs <- references_read(data = "/blue/anaporras/share/WoS_Results/Journal of Materials Research and Technology", 
                                                                dir=TRUE, 
                                                                include_all = FALSE)
JournalOfMaterialsResearchAndTechnology_clean <- authors_clean(JournalOfMaterialsResearchAndTechnology_refs)
JournalOfMaterialsResearchAndTechnology_refined <- authors_refine(JournalOfMaterialsResearchAndTechnology_clean$review,
                                                                  JournalOfMaterialsResearchAndTechnology_clean$prelim)

# Georeference author names
JournalOfMaterialsResearchAndTechnology_georef <- authors_georef(data=JournalOfMaterialsResearchAndTechnology_refined,address_column = "address")

# Save outputs
write.csv(JournalOfMaterialsResearchAndTechnology_refined, "/blue/anaporras/share/new_outputs/JournalOfMaterialsResearchAndTechnology_refined.csv")

save(JournalOfMaterialsResearchAndTechnology_refined, file ="/blue/anaporras/share/new_outputs/JournalOfMaterialsResearchAndTechnology_refined.RData")
save(JournalOfMaterialsResearchAndTechnology_georef, file ="/blue/anaporras/share/new_outputs/JournalOfMaterialsResearchAndTechnology_georef.RData")
