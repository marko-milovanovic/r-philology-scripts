# libraries

library(phonR)

# 

with(
  subset(formants_frame, speaker == "F01" & !is.na(vowel)),
  plotVowels(
    F1Z, F2Z, vowel,
    # mark for each value
    plot.tokens = TRUE,
    pch.tokens = accent,
    cex.tokens = 0.8,
    # mark for each group
    ##plot.means = TRUE,
    ##pch.means = vowel,
    ##cex.means = 2.5,
    # coloring
    pretty = TRUE,
    var.col.by = vowel,
    legend.kwd = "bottomright"
    ##var.col.by = vowel_accent,
    ##col = colors_vowel_accent
  )
)