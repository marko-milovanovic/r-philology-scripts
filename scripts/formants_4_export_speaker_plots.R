# used to export plots

# libraries

library(phonR)

# functions

export_form_plots <- function(
  formants_frame, 
  type = c("png", "svg", "emf"),
  normalized = TRUE
) {
  type <- match.arg(type)
  speakers <- unique(formants_frame$speaker)

  for(spk in speakers) {
    filename <- paste0(
      "plots/",
      spk,
      if (normalized) "_normalized_plot." else "_plot.",
      type
    )
    
    switch(
      type,
      png = png(filename, width = 1200, height = 1200, res = 300),
      svg = svg(filename, width = 6, height = 6),
      emf = win.metafile(filename, width = 6, height = 6)
    )
    
    with(
      subset(formants_frame, speaker == spk & !is.na(vowel)),
      plotVowels(
        if (normalized) F1Z else F1,
        if (normalized) F2Z else F2,
        vowel,
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
        legend.kwd = "bottomright",
        ##var.sty.by = vowel_accent,
        ##col = colors_vowel_accent
      )
    )
    
    dev.off()
  }
}

# generate

export_type = "png"

export_form_plots(formants_frame, export_type, TRUE)
export_form_plots(formants_frame, export_type, FALSE)

# cleanup

rm(export_type)
rm(export_form_plots)
