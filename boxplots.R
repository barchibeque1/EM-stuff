boxy=function
(method=teaching_method_category,
 mymethod="IE",
 test=Test,
 mytest="CSEM",
 gain=Hake_gain,
 csize=number_who_took_test_matched,
 mytitle="Gain by Test year for IE on CSEM",
 covary=test_year,
 mycovary="Test Year",
 control=method==mymethod& Test==mytest&Test_year!=""
)
{ 
  boxplot(gain[control]~test_year[control],
               main = mytitle, xlab="test year", ylab= "Normalized Gain", col=rainbow(15))}
boxy()
boxy(mytest="BEMA", mytitle="Gain by test year for IE on BEMA")
boxy(mymethod="TRAD", mytitle="Gain by test year for Traditional on CSEM")
boxy(mymethod="TRAD", mytest="BEMA",mytitle= "Gain by test year for Traditional on BEMA")
