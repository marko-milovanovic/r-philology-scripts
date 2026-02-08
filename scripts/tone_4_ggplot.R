### 1. LOAD LIBRARIES
library(mgcv)
library(ggplot2)
library(dplyr)

export_plot <- function(frame, gamm, title) {
  frame_new <- expand.grid(
    # Matches your 0, 10, 20... 100 structure
    timepoint = seq(0, 100, length.out = 100), 
    accent = levels(frame$accent),
    prosody = levels(frame$prosody),
    speaker = frame$speaker[1], 
    word = frame$word[1]
  )
  
  preds <- predict(
    gamm, 
    newdata = frame_new, 
    se.fit = TRUE, 
    exclude = c("s(speaker)", "s(word)")
  )
  
  frame_new$ERB_pred <- preds$fit
  frame_new$se <- preds$se.fit
  
  
  print(
    
  ggplot(frame_new, aes(x = timepoint, y = ERB_pred, color = accent, fill = accent)) +
    # Confidence Intervals (95%)
    #geom_ribbon(aes(ymin = ERB_pred - 1.96*se, ymax = ERB_pred + 1.96*se), alpha = 0.2, color = NA) +
    # Predicted Smooth Lines
    geom_line(linewidth = 1.2) +
    # Facet by Prosody (all share the same Y-axis scale)
    facet_wrap(~prosody) +
    # Force unified Y-axis based on raw data range
    coord_cartesian(ylim = c(3.5, 5.5)) +
    # Styling
    theme_minimal() +
    labs(
      x = "Timepoint",
      y = "ERB",
      color = "Accent Type",
      fill = "Accent Type"
    ) +
    theme(legend.position = "bottom")
  )
}

export_plot(tone_frame_long %>% filter(syllable_count == 2), tone_gamm_s2, "gamm_plot2_geo_2")
export_plot(tone_frame_long %>% filter(syllable_count == 3), tone_gamm_s3, "gamm_plot2_geo_3")

rm(export_plot)
rm(export_adj_plot)
