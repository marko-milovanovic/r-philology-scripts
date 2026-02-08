# libraries

library(afex)

#

anova_result <- aov_ez(
  id = "speaker",
  dv = "F1",
  data = subset(formants_frame, !is.na(syllable_quantity) & vowel == "a"),
  within = "syllable_quantity",
  between = "sex",
  type = 3   # Type III sums of squares (common in psychology)
)

anova_result <- nice(anova_result)