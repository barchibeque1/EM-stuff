attach(emdata)
boxy=function
(method=Teaching_method,
 mymethod="IE",
 test=Test,
 mytest="CSEM",
 gain=Hake_gain,
 year=as.numeric(Test_year),
 csize=number_who_took_test_matched,
 mytitle="Gain by Test year for IE on CSEM",
 mycovary="Test Year",
 control=method==mymethod&Test==mytest,
 lim=c(.5,12.5),
 exlab="Test Year"
)
{
  boxplot(gain[control]~year[control],
               main = mytitle, xlab=exlab, ylab= "Normalized Gain", 
          col=rainbow(15), ylim=c(0,1),xlim=lim)

  }
boxy()
boxy(mytest="BEMA", mytitle="Gain by test year for IE on BEMA", lim=c(3.5,10.5))
boxy(mymethod="TRAD", mytitle="Gain by test year for Traditional on CSEM",lim=c(2.5, 12.5))
boxy(mymethod="TRAD", mytest="BEMA",mytitle= "Gain by test year for Traditional on BEMA", lim=c(.5,1.5),exlab="test year (2008 only)")
