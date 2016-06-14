hake.plot = function(
  # my.test = "FMCE",
  
  my.test = Test[Teaching_method!=""], #this is where the tests are
  my.test.sel = 2, # default: CSEM
  
  my.gain = Hake_gain[Teaching_method!=""],
  my.covary = Teaching_method[Teaching_method!=""],
  my.levels = c(4,2),
  my.colors = if(length(my.levels)==2){
    c("tomato2","dodgerblue") #these are pretty red and blue
  }else{
    rainbow(length(my.levels)) #these are a rainbow.
  },
  my.bins = c(-.2, 0,.1,.2,.3,.4,.5,.6,.7,.8),
  my.binlabels =c( "<0","0-.1",".1-.2",".2-.3",".3-.4",".4-.5",".5-.6",".6-.7",".7-.8"),
  my.title=sprintf("Normalized Gain for %s",levels(my.test)[my.test.sel]),
  my.xlab="Normalized Gain (<g>)",
  my.ylab="Fraction of classes",
  my.ylim=c(0,.7),
  my.plotvals = TRUE # display values on each bar?
){
  # Raw matrix
  raw.matrix = as.matrix(
    table(
      my.covary[my.test==levels(my.test)[my.test.sel]],
      cut(my.gain,my.bins,labels=my.binlabels)[my.test==levels(my.test)[my.test.sel]]
    )
  )
  
  # renormalize and select columns
  norm.matrix = raw.matrix[my.levels]/rowSums(raw.matrix)[my.levels]
  
  
  # plot
  hake.plot = hist(
    norm.matrix,
    breaks=my.bins,
    #beside=TRUE,
    col=my.colors,
    main=my.title,
    #legend.text=TRUE,
    xlab=my.xlab,
    ylab=my.ylab,
    ylim=my.ylim
  )
  
  #values on plot
  if(my.plotvals==TRUE){
    text(
      x=hake.plot,
      y=norm.matrix + .02,
      labels=signif(norm.matrix,2)
      #hvalues.matrix
    )
  }
  
  #return normed matrix
  return(norm.matrix)
  
} # end hake.plot = function
hake.plot()

