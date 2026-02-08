# used to import files from data folder and populate columns for further use

# libraries

library(phonR)

# import

f_formants_grid <- read.csv("data/f_form.csv")
m_formants_grid <- read.csv("data/m_form.csv")

# vowel

f_formants_grid$vowel <- ifelse(
  is.na(formants_phonemes_to_vowel_map[f_formants_grid$phoneme]),
  NA,
  formants_phonemes_to_vowel_map[f_formants_grid$phoneme]
)
m_formants_grid$vowel <- ifelse(
  is.na(formants_phonemes_to_vowel_map[m_formants_grid$phoneme]),
  NA,
  formants_phonemes_to_vowel_map[m_formants_grid$phoneme]
)

# accent

f_formants_grid$accent <- ifelse(
  is.na(formants_phonemes_to_accent_map[f_formants_grid$phoneme]),
  NA,
  formants_phonemes_to_accent_map[f_formants_grid$phoneme]
)
m_formants_grid$accent <- ifelse(
  is.na(formants_phonemes_to_accent_map[m_formants_grid$phoneme]),
  NA,
  formants_phonemes_to_accent_map[m_formants_grid$phoneme]
)

# prosody_type

f_formants_grid$prosody_type <- ifelse(
  is.na(formants_phonemes_to_prosody_type_map[f_formants_grid$phoneme]),
  NA,
  formants_phonemes_to_prosody_type_map[f_formants_grid$phoneme]
)
m_formants_grid$prosody_type <- ifelse(
  is.na(formants_phonemes_to_prosody_type_map[m_formants_grid$phoneme]),
  NA,
  formants_phonemes_to_prosody_type_map[m_formants_grid$phoneme]
)

# normalization

lobanov_values <- normLobanov(
  f = f_formants_grid[, c("F1","F2")],
  group = f_formants_grid$speaker
)
f_formants_grid$F1Z <- lobanov_values[, 1]
f_formants_grid$F2Z <- lobanov_values[, 2]

lobanov_values <- normLobanov(
  f = m_formants_grid[, c("F1","F2")],
  group = m_formants_grid$speaker
)
m_formants_grid$F1Z <- lobanov_values[, 1]
m_formants_grid$F2Z <- lobanov_values[, 2]

rm(lobanov_values)

# syllable quantity

f_formants_grid$syllable_quantity <- ifelse(
  f_formants_grid$prosody_type %in% c("d", "k"),
  f_formants_grid$prosody_type,
  NA
)
m_formants_grid$syllable_quantity <- ifelse(
  m_formants_grid$prosody_type %in% c("d", "k"),
  m_formants_grid$prosody_type,
  NA
)

# color helper

# f_formants_grid$vowel_accent <- paste(f_formants_grid$vowel, f_formants_grid$accent, sep = "_")
# m_formants_grid$vowel_accent <- paste(m_formants_grid$vowel, m_formants_grid$accent, sep = "_")

# reorder columns

f_formants_grid$sex <- 1
f_formants_grid <- f_formants_grid[, c("speaker","sex","phoneme","context","vowel","accent","prosody_type","syllable_quantity","F1","F2","F3","F1Z","F2Z")]
m_formants_grid$sex <- 2
m_formants_grid <- m_formants_grid[, c("speaker","sex","phoneme","context","vowel","accent","prosody_type","syllable_quantity","F1","F2","F3","F1Z","F2Z")]

formants_frame <- rbind(f_formants_grid, m_formants_grid)

rm(f_formants_grid)
rm(m_formants_grid)
