# Testing normality and homogeneity of variance
# gam.check(tone_gamm_s2)
# gam.check(tone_gamm_s3)
# gam.check(tone_gamm_adj_s2)
# gam.check(tone_gamm_adj_s3)

# Curve testing
# plot(tone_gamm_s2, pages = 10)
# plot(tone_gamm_s3, pages = 10)
# plot(tone_gamm_adj_s2, pages = 10)
# plot(tone_gamm_adj_s3, pages = 10)

# Statistical significance of curves
# summary(tone_gamm_s2)
# summary(tone_gamm_s3)
# summary(tone_gamm_adj_s2)
# summary(tone_gamm_adj_s3)


# emmeans(tone_gamm_s2, pairwise ~ accent | prosody)
# emmeans(tone_gamm_s3, pairwise ~ accent | prosody)

# emmeans(tone_gamm_s2, pairwise ~ prosody | accent)
# emmeans(tone_gamm_s3, pairwise ~ prosody | accent)

# emmeans(tone_gamm_adj_s2, pairwise ~ accent)
# emmeans(tone_gamm_adj_s3, pairwise ~ accent)

# Maximum

derivs <- derivatives(tone_gamm_s3, select = "s(timepoint)", partial_match = TRUE, type = "central")

# Plot_diff__itsadug statistically significant differences between curves

plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DS","DU")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DS vs DU")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DS","KS")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DS vs KS")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DS","KU")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DS vs KU")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DU","KS")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DU vs KS")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DS","KU")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DU vs KU")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("KS","KU")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - KS vs KU")

plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DS","DU")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DS vs DU")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DS","KS")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DS vs KS")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DS","KU")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DS vs KU")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DU","KS")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DU vs KS")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("DS","KU")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DU vs KU")
plot_diff(tone_gamm_s2,view="timepoint",comp=list(accent=c("KS","KU")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - KS vs KU")

plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DS","DU")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DS vs DU")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DS","KS")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DS vs KS")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DS","KU")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DS vs KU")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DU","KS")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DU vs KS")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DS","KU")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - DU vs KU")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("KS","KU")),cond=list(prosody="AK"),rm.ranef=TRUE,main="AK - KS vs KU")

plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DS","DU")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DS vs DU")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DS","KS")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DS vs KS")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DS","KU")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DS vs KU")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DU","KS")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DU vs KS")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("DS","KU")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - DU vs KU")
plot_diff(tone_gamm_s3,view="timepoint",comp=list(accent=c("KS","KU")),cond=list(prosody="PA"),rm.ranef=TRUE,main="PA - KS vs KU")