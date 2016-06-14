barpl=function
 (method=teaching_method,
 mymethod="IE",
 mymetod="TRAD",
 test=Test,
 mytest="CSEM",
 vari="Test",
 gain=as.numeric(Hake_gain),
 mycol="deepskyblue",
 math=Math_level,
 mycol2="navy",
 mycoltra="tomato4",
 mycoltra2="indianred4",
 csize=studio_size,
 mytitle="Normalized gain by Class Size CSEM",
 leg=c(mycol,mycol2,mycoltra,mycoltra2),
funk=c(mean(Hake_gain[Test=="CSEM"&teaching_method=="IE"]),
       mean(Hake_gain[Test=="CSEM"&teaching_method=="TRAD"]),
       mean(Hake_gain[Test=="BEMA"&teaching_method=="IE"]),
       mean(Hake_gain[Test=="BEMA"&teaching_method=="TRAD"]))
 
 

 )
{
  #change the xlab to fit what you are comparing
  barplot(funk,
          width=3,
          beside=2,
          col=c(mycol,mycoltra),
          ylab="Normalized Gain",
          xlab=vari,
          ylim=c(0,.6),
          names.arg=c("CSEM","", "BEMA",""),
          main = "Gain by Test")
  }
  barpl()
  
#Various values of funk
  #For Institution type 
  #NOT AMERICAN is a necessary condition for carnigie classification variables
  funk=c( mean(Hake_gain[teaching_method=="IE" & CC2000=="15"  & Carnegie_classification_name!="Not American"]),
          mean(Hake_gain[teaching_method=="TRAD" & CC2000=="15"  & Carnegie_classification_name!="Not American"]),
          mean(Hake_gain[teaching_method=="IE" & CC2000=="16"  & Carnegie_classification_name!="Not American"]),
          mean(Hake_gain[teaching_method=="TRAD" & CC2000=="16"  & Carnegie_classification_name!="Not American"]),
          mean(Hake_gain[teaching_method=="IE" & CC2000=="21" & Carnegie_classification_name!="Not American"]),
          mean(Hake_gain[teaching_method=="TRAD" & CC2000=="21"  & Carnegie_classification_name!="Not American"]),
          mean(Hake_gain[teaching_method=="IE" & CC2000=="40" & Carnegie_classification_name!="Not American"]),
          mean(Hake_gain[teaching_method=="TRAD" & CC2000=="40"  & Carnegie_classification_name!="Not American"]),
          #mean(Hake_gain[teaching_method=="IE" & CC2000=="14" & Carnegie_classification_name!="Not American"]),
          #    mean(Hake_gain[teaching_method=="TRAD" & CC2000=="14"  & Carnegie_classification_name!="Not American"]),
          mean(Hake_gain[teaching_method=="IE" & CC2000=="54" & Carnegie_classification_name!="Not American"]),
          mean(Hake_gain[teaching_method=="TRAD" & CC2000=="54"  & Carnegie_classification_name!="Not American"])  )
  # names.arg=c("Doctoral Ext","","Doctoral Int","","Masters I","","Associates","","Engineering and Tech","")
  
  #Math Level
  funk=c( mean(Hake_gain[teaching_method=="IE"& Math_level=="CALC"& Test=="CSEM"]),
          mean(Hake_gain[teaching_method=="TRAD"& Math_level=="CALC"& Test=="CSEM"]),
          mean(Hake_gain[teaching_method=="IE" & Math_level=="ALG"& Test=="CSEM"]),
          mean(Hake_gain[teaching_method=="TRAD" &Math_level=="ALG"& Test=="CSEM"]) )
  #names.arg=c("Calculus","","Algebra","")
  
  #By enrollment profile
  funk=c(mean(Hake_gain[teaching_method=="IE" & CCENRPRF=="1"  & Carnegie_classification_name!="Not American"]),
         mean(Hake_gain[teaching_method=="TRAD" & CCENRPRF=="1"  & Carnegie_classification_name!="Not American"]),
         mean(Hake_gain[teaching_method=="IE" & CCENRPRF=="3"  & Carnegie_classification_name!="Not American"]),
         mean(Hake_gain[teaching_method=="TRAD" & CCENRPRF=="3"  & Carnegie_classification_name!="Not American"]),
         mean(Hake_gain[teaching_method=="IE" & CCENRPRF=="4"  & Carnegie_classification_name!="Not American"]),
         mean(Hake_gain[teaching_method=="TRAD" & CCENRPRF=="4"  & Carnegie_classification_name!="Not American"]),
         mean(Hake_gain[teaching_method=="IE" & CCENRPRF=="5"  & Carnegie_classification_name!="Not American"]),
         mean(Hake_gain[teaching_method=="TRAD" & CCENRPRF=="5"  & Carnegie_classification_name!="Not American"]),
         mean(Hake_gain[teaching_method=="IE" & CCENRPRF=="6"  & Carnegie_classification_name!="Not American"]),
         mean(Hake_gain[teaching_method=="TRAD" & CCENRPRF=="6"  & Carnegie_classification_name!="Not American"]))
  #names.arg=c("Exclusively Undergrad (2 yr)","","Very High Undergraduate","","High Undergraduate","","Majority Undergraduate","","Majority graduate",""),
  