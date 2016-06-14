attach(emdata)
#You need to download the "scales" function to run this properly
scat=function
(method=teaching_method,
 mymethod="IE",
 mymetod="TRAD",
 test=Test,
 mytest="CSEM",
 gain=Hake_gain,
 mycol="dodgerblue",
 mycol2="navy",
 mycoltra="tomato",
 mycoltra2="indianred4",
 csize=lab_size,
 mytitle="Normalized gain by class size",
 hmm=.3,
 shape=16,
 stud=c(0,400),
 key=c("IE/CSEM","TRAD/CSEM","IE/BEMA","TRAD/BEMA"),
 leg=c(mycol,mycoltra,mycol2,mycoltra2)
)
{
  
  plot.default(y=gain[method==mymethod& test==mytest&csize!=""], x=(csize[method==mymethod& test==mytest&csize!=""]),
       main = mytitle, xlab="Class Size", ylab= "Hake Gain", ylim=c(0,.7), xlim=c(0,410), col=alpha(mycol,.2),pch=16, ann=TRUE,xaxt='n')
  par(new=TRUE)
  abline(lm(gain[test==mytest&method==mymethod&csize!=""]~(csize[test==mytest&method==mymethod&csize!=""])), col=mycol,lwd=2 )

  par(new=TRUE)
  plot.default(y=gain[method==mymetod& test==mytest&csize!=""], x=(csize[method==mymetod& test==mytest&csize!=""]),
               main = mytitle, xlab="Class Size", ylab= "Hake Gain", ylim=c(0,.7), xlim=c(0,410), ann=FALSE,col=alpha(mycoltra,.2),pch=17,xaxt='n')
  par(new=TRUE)
  abline(lm(gain[test==mytest&method==mymetod&csize!=""]~(csize[test==mytest&method==mymetod&csize!=""])), col=mycoltra,lwd=2 )

par(new=TRUE)
plot.default(y=gain[method==mymethod& test!=mytest&csize!=""], x=(csize[method==mymethod& test!=mytest&csize!=""]),
             main = mytitle, xlab="Class Size", ylab= "Hake Gain", ylim=c(0,.7), xlim=c(0,410), col=alpha(mycol2,.2),pch=16, ann=TRUE,xaxt='n')
par(new=TRUE)
abline(lm(gain[test!=mytest&method==mymethod&csize!=""]~(csize[test!=mytest&method==mymethod&csize!=""])), col=mycol2,lwd=2 )

par(new=TRUE)
plot.default(y=gain[method!=mymetod& test!=mytest&csize!=""], x=(csize[method!=mymetod& test!=mytest&csize!=""]),
             main = mytitle, xlab="Class Size", ylab= "Hake Gain", ylim=c(0,.7), xlim=c(0,410), ann=FALSE,col=alpha(mycoltra2,.2),pch=17)
par(new=TRUE)
abline(lm(gain[test!=mytest&method==mymetod&csize!=""]~(csize[test!=mytest&method==mymetod&csize!=""])), col=mycoltra2,lwd=2 )
par(new=TRUE)
  legend(300,.7,key,pch=c(16,17,16,17),col=c(leg))
  
  #axis(1,at=c(0,.5,1,1.5,2,2.5,3), labels=c("0","3", "10", "32","100","320","1000"))
}
#by studio
scat()
scat(mytest="BEMA", mytitle ="Normalized gain by class size on BEMA",mycol="darkblue",mycoltra= "indianred3", key=c("IE/BEMA","TRAD/BEMA"))

#by lecture
scat(csize=lecture_size, mytitle="Gain by class size for IE on CSEM (lecture)")
scat(csize=lecture_size,mytest="BEMA", mytitle ="Gain by class size for IE on BEMA (lecture)", mycol="darkblue",mycoltra= "indianred3", key=c("IE/BEMA","TRAD/BEMA"))


#this is a plot for all the data (studio)
plot(Hake_gain[studio_size!=""&Hake_gain!=""],studio_size[studio_size!=""&Hake_gain!=""],xlab="Normalized Gain", ylab="Class Size", main="Gain by class size",ann=TRUE )
#this is  a plot for all data (lecture). Probably the worse choice.
plot(Hake_gain[lecture_size!=""&Hake_gain!=""],lecture_size[lecture_size!=""&Hake_gain!=""],xlab="Normalized Gain", ylab="Class Size", main="Gain by class size",ann=TRUE )
