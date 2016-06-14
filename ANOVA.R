summary(aov(as.numeric(Hake_gain)  ~ teaching_method*lab_size))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*lecture_size))

summary(aov(as.numeric(Hake_gain)~ teaching_method*Math_level*lab_size))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*Country))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*Test))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*as.numeric(Pre.score)))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*as.factor(BASIC2010)))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*as.factor(IPUG2010)))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*as.factor(UGPROFILE2010)))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*as.factor(ENRPROFILE2010)))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*as.factor(SIZESET2010)))

summary(aov(as.numeric(Hake_gain)  ~ teaching_method*as.factor(CONTROL)))

manova(as.numeric(Hake_gain)~as.numeric(Pre.score)~teaching_method)
