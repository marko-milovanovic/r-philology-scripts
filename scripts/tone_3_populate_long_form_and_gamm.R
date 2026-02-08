# converts tone form to long form and extract gamm

library(tidyr)
library(dplyr)
library(mgcv)

# convert to long

tone_frame_long <- tone_frame %>%
  # pivot Hz and ERB columns to long format
  pivot_longer(
    cols = matches("^p\\d+ \\((Hz|ERB)\\)$"),
    names_to = c("timepoint", ".value"),
    names_pattern = "p(\\d+) \\((Hz|ERB)\\)",
    values_drop_na = TRUE
  ) %>%
  # extract numeric time points from column names and adjust them for PA
  mutate(
    timepoint = as.numeric(timepoint),
    timepoint_adj = case_when(
      prosody == "AK" ~ timepoint,
      prosody == "PA" ~ 120 + (timepoint / 100) * 100,
      TRUE ~ NA_real_
    )
  ) %>%
  # keep required columns
  select(
    speaker, word, accent, prosody, syllable_count, timepoint, timepoint_adj, Hz, ERB
  ) %>%
  # drop rows with any NA value
  drop_na()

# remove single level factors

factor_columns <- c("speaker", "word", "accent", "prosody", "syllable_count")

tone_frame_long <- tone_frame_long %>%
  filter(
    if_all(all_of(factor_columns), ~ . %in% names(table(.)[table(.) > 1]))
  )

rm(factor_columns)

# factor columns

tone_frame_long <- tone_frame_long %>%
  mutate(
    accent = factor(accent),
    prosody = factor(prosody),
    speaker = factor(speaker),
    word = factor(word)
  )

# populate gamm

tone_gamm_s2 <- bam(
  ERB ~ 
    s(timepoint, by = interaction(accent, prosody)) +
    accent * prosody +
    s(speaker, bs = "re") +
    s(word, bs = "re"),
  data = tone_frame_long %>% filter(syllable_count == 2),
  method = "fREML"
)

tone_gamm_s3 <- bam(
  ERB ~ 
    s(timepoint, by = interaction(accent, prosody)) +
    accent * prosody +
    s(speaker, bs = "re") +
    s(word, bs = "re"),
  data = tone_frame_long %>% filter(syllable_count == 3),
  method = "fREML"
)
