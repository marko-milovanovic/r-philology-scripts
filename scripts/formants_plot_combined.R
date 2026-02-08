# libraries

library(phonR)

# 

with(
  subset(formants_frame, sex == 1 & !is.na(vowel)),
  plotVowels(
    F1Z, F2Z, vowel,
    group = speaker,
    # mark for each value
    plot.tokens = FALSE,
    pch.tokens = accent,
    cex.tokens = 0.8,
    # mark for each group
    plot.means = FALSE,
    pch.means = vowel,
    cex.means = 2.5,
    # coloring
    pretty = TRUE,
    var.col.by = vowel,
    var.sty.by = speaker,
    ellipse.line = TRUE,
    ellipse.fill = TRUE,
    fill.opacity = 0.05
  )
)