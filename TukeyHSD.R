TukeyHSD(aov(Hake_gain[Test=="CSEM"&Math_level=="CALC"|Math_level=="ALG"]
             ~teaching_method[Test=="CSEM"&Math_level=="CALC"|Math_level=="ALG"]*Math_level[Test=="CSEM"&Math_level=="CALC"|Math_level=="ALG"]))
TukeyHSD(aov(Hake_gain[teaching_method=="IE"|teaching_method=="TRAD"&Test=="CSEM"]
      ~teaching_method[teaching_method=="IE"|teaching_method=="TRAD"&Test=="CSEM"]*as.factor(CC2000[teaching_method=="IE"|teaching_method=="TRAD"&Test=="CSEM"])))
TukeyHSD(aov(Hake_gain[teaching_method=="IE"|teaching_method=="TRAD"&Test=="CSEM"]
             ~teaching_method[teaching_method=="IE"|teaching_method=="TRAD"&Test=="CSEM"]*as.factor(ENRPROFILE2010[teaching_method=="IE"|teaching_method=="TRAD"&Test=="CSEM"])))