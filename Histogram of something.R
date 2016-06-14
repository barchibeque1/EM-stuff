hist(Hake_gain[Hake_gain>0&Teaching_method=="TRAD"], breaks=9, 
     probability=studio_size[Hake_gain>0&Teaching_method=="TRAD"],
     xlim=c(0,.7),ylim=c(0,6))
hist(Hake_gain[Hake_gain>0&Teaching_method=="IE"], breaks=9, 
     probability=studio_size[Hake_gain>0&Teaching_method=="TRAD"],
     xlim=c(0,.7),ylim=c(0,6), beside=TRUE)

