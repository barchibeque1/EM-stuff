scat=function
(method=teaching_method_category,
 mymethod="IE",
 test=Test,
 mytest="CSEM",
 gain=Hake_gain,
 csize=class_size,
 mytitle="Gain by class size for IE on CSEM"
)
{
  
  
  plot(gain[method==mymethod& Test==mytest],
       csize[method==mymethod& Test==mytest],
       main = mytitle,
       xlab="Hake Gain", ylab= "class size")
}
#by studio
scat()
scat(mytest="BEMA", mytitle ="Gain by class size for IE on BEMA")
scat(mymethod="TRAD",mytest="BEMA", mytitle="Gain by class size for TRAD on BEMA")
scat(mymethod="TRAD", mytitle="Gain by class size for TRAD on CSEM")
#by lecture
scat(csize=lecture_size, mytitle="Gain by class size for IE on CSEM (lecture)")
scat(csize=lecture_size,mytest="BEMA", mytitle ="Gain by class size for IE on BEMA (lecture)")
scat(csize=lecture_size,mymethod="TRAD",mytest="BEMA", mytitle="Gain by class size for TRAD on BEMA((lecture)")
scat(csize=lecture_size,mymethod="TRAD", mytitle="Gain by class size for TRAD on CSEM (lecture)")

#this is a plot for all the data (studio)
plot(Hake_gain[class_size!=""&Hake_gain!=""],class_size[class_size!=""&Hake_gain!=""],xlab="Normalized Gain", ylab="Class Size", main="Gain by class size" )
#this is  a plot for all data (lecture)
plot(Hake_gain[lecture_size!=""&Hake_gain!=""],lecture_size[lecture_size!=""&Hake_gain!=""],xlab="Normalized Gain", ylab="Class Size", main="Gain by class size" )
