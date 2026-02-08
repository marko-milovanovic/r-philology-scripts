# used to export plots

# libraries

library(phonR)

# functions

export_form_plots <- function(
    formants_frame, 
    type = c("png", "svg", "emf"),
    normalized = TRUE,
    filename
) {
  type <- match.arg(type)
  filename <- paste0(filename, type)
  
  switch(
    type,
    png = png(filename, width = 1200, height = 1200, res = 300),
    svg = svg(filename, width = 6, height = 6),
    emf = win.metafile(filename, width = 6, height = 6)
  )
  
  with(
    subset(formants_frame, !is.na(vowel)),
    plotVowels(
      if (normalized) F1Z else F1,
      if (normalized) F2Z else F2,
      vowel,
      group = speaker,
      # mark for each value
      plot.tokens = FALSE,
      # mark for each group
      plot.means = FALSE,
      # coloring
      pretty = TRUE,
      var.col.by = vowel,
      ##legend.kwd = "bottomright",
      # ellipse
      ##var.sty.by = speaker,
      ellipse.line = TRUE,
      ellipse.fill = TRUE,
      fill.opacity = 0.05
    )
  )
  
  dev.off()
}

export_form_prosody_type_plots <- function(
    formants_frame, 
    type = c("png", "svg", "emf"),
    normalized = TRUE,
    filename
) {
  type <- match.arg(type)
  filename <- paste0(filename, type)
  
  switch(
    type,
    png = png(filename, width = 1200, height = 1200, res = 300),
    svg = svg(filename, width = 6, height = 6),
    emf = win.metafile(filename, width = 6, height = 6)
  )

  formants_frame = aggregate(
    cbind(F1, F2, F3, F1Z, F2Z) ~ speaker + vowel + prosody_type,
    data = formants_frame,
    FUN = mean,
    na.rm = TRUE
  )
  
  with(
    subset(formants_frame, !is.na(vowel)),
    plotVowels(
      if (normalized) F1Z else F1,
      if (normalized) F2Z else F2,
      vowel,
      # mark for each value
      plot.tokens = FALSE,
      # mark for each group
      plot.means = FALSE,
      # coloring
      pretty = TRUE,
      var.col.by = vowel,
      ##legend.kwd = "bottomright",
      # ellipse
      ##var.sty.by = vowel,
      ellipse.line = TRUE,
      ellipse.fill = TRUE,
      fill.opacity = 0.05
    )
  )
  
  dev.off()
}

# generate

export_type = "svg"

# female

export_data = subset(formants_frame, sex == 1)

export_form_plots(
  export_data,
  export_type,
  TRUE,
  "plots/F_normalized_plot."
)
export_form_plots(
  export_data,
  export_type,
  FALSE,
  "plots/F_plot."
)

# female accented

export_data = subset(formants_frame, sex == 1 & prosody_type %in% c("d", "k"))

export_form_prosody_type_plots(
  export_data,
  export_type,
  TRUE,
  "plots/F_accented_normalized_plot."
)
export_form_prosody_type_plots(
  export_data,
  export_type,
  FALSE,
  "plots/F_accented_plot."
)

# female not accented

export_data = subset(formants_frame, sex == 1 & prosody_type %in% c("na"))

export_form_prosody_type_plots(
  export_data,
  export_type,
  TRUE,
  "plots/F_not_accented_normalized_plot."
)
export_form_prosody_type_plots(
  export_data,
  export_type,
  FALSE,
  "plots/F_not_accented_plot."
)

# male

export_data = subset(formants_frame, sex == 2)

export_form_plots(
  export_data,
  export_type,
  TRUE,
  "plots/M_normalized_plot."
)
export_form_plots(
  export_data,
  export_type,
  FALSE,
  "plots/M_plot."
)

# male accented

export_data = subset(formants_frame, sex == 2 & prosody_type %in% c("d", "k"))

export_form_prosody_type_plots(
  export_data,
  export_type,
  TRUE,
  "plots/M_accented_normalized_plot."
)
export_form_prosody_type_plots(
  export_data,
  export_type,
  FALSE,
  "plots/M_accented_plot."
)

# male not accented

export_data = subset(formants_frame, sex == 2 & prosody_type %in% c("na"))

export_form_prosody_type_plots(
  export_data,
  export_type,
  TRUE,
  "plots/M_not_accented_normalized_plot."
)
export_form_prosody_type_plots(
  export_data,
  export_type,
  FALSE,
  "plots/M_not_accented_plot."
)

# cleanup

rm(export_type)
rm(export_data)
rm(export_form_plots)
rm(export_form_prosody_type_plots)