golden=function
(method=Teaching_method,
 mymethod="IE",
 mymetod="TRAD",
 test=Test,
 mytest="CSEM",
 gain=Hake_gain,
 csize=studio_size,
 mytitle="Gain by Pre-score on CSEM",
 covary=pre_score,
 mycovary="Pre-score",
 mycol="dodgerblue",
 mycoltra="tomato",
 xtestrelated=c(0 , 80),
 ytestrelated=c(0 , .8)
 
 
)
{
  
  
  plot.default(y=gain[method==mymethod& Test==mytest&covary!=""],x=covary[method==mymethod& Test==mytest&covary!=""],
       main = mytitle, xlab=mycovary, ylab= "Normalized Gain",xlim=xtestrelated, ylim=ytestrelated,col=alpha(mycol,.2),pch=16,ann=TRUE)
  par(new=TRUE, ann=FALSE)
  plot.default(y=gain[method==mymetod& Test==mytest&covary!=""],x=covary[method==mymetod& Test==mytest&covary!=""],
               main = mytitle, xlab=mycovary, ylab= "Normalized Gain",xlim=xtestrelated, ylim=ytestrelated,col=alpha(mycoltra,.2),pch=16)

  }

#prescore stuff
golden()
golden(mytest="BEMA", mytitle ="Gain by Pre-score on BEMA",mycol="darkblue",mycoltra= "indianred3")


#postscore stuff
golden(covary=post_score, mycovary="Post-score", mytitle="Gain by Post-score on CSEM")
golden(covary=post_score, mycovary="Post-score",mytest="BEMA", mytitle ="Gain by Post-score on BEMA",mycol="darkblue",mycoltra= "indianred3")

