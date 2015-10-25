golden=function
(method=teaching_method_category,
 mymethod="IE",
 test=Test,
 mytest="CSEM",
 gain=Hake_gain,
 csize=number_who_took_test_matched,
 mytitle="Gain by Pre-score for IE on CSEM",
 covary=pre_score,
 mycovary="Pre-score",
 control=method==mymethod& Test==mytest
)
{
  
  
  plot.default(y=gain[control],x=covary[control],
       main = mytitle, xlab=mycovary, ylab= "Normalized Gain")}

#prescore stuff
golden()
golden(mytest="BEMA", mytitle ="Gain by Pre-score for IE on BEMA")
golden(mymethod="TRAD",mytest="BEMA", mytitle="Gain by Pre-score for TRAD on BEMA")
golden(mymethod="TRAD", mytitle="Gain by Pre-score for TRAD on CSEM")

#postscore stuff
golden(covary=post_score, mycovary="Post-score", mytitle="Gain by Post-score for IE on CSEM")
golden(covary=post_score, mycovary="Post-score",mytest="BEMA", mytitle ="Gain by Pre-score for IE on BEMA")
golden(covary=post_score, mycovary="Post-score",mymethod="TRAD",mytest="BEMA", mytitle="Gain by Pre-score for TRAD on BEMA")
golden(covary=post_score, mycovary="Post-score",mymethod="TRAD", mytitle="Gain by Pre-score for TRAD on CSEM")

#test year stuff
golden(covary=test_year, mycovary="Test Year",  mytitle="Gain by test year for IE on CSEM" )
golden(covary=test_year, mycovary="Test Year",mytest="BEMA", mytitle ="Gain by test year for IE on BEMA")
golden(covary=test_year, mycovary="Test Year", mymethod="TRAD",mytest="BEMA", mytitle="Gain by test year for TRAD on BEMA")
golden(covary=test_year, mycovary="Test Year", mymethod="TRAD", mytitle="Gain by test year for TRAD on CSEM")
