# used to import files from data folder and populate columns for further use

# import

tone_frame <- read.csv("data/tone.csv", check.names = FALSE)

# sex (F = 1, M = 2)

sex_map <- c(F = 1, M = 2)

tone_frame$sex <- sex_map[substr(tone_frame$speaker, 1, 1)]

rm(sex_map)

# accent

tone_frame$accent <- ifelse(
  is.na(tone_phonemes_to_accent_map[tone_frame$phoneme]),
  NA,
  tone_phonemes_to_accent_map[tone_frame$phoneme]
)

# prosody

tone_frame$prosody <- ifelse(
  is.na(tone_phonemes_to_prosody_map[tone_frame$phoneme]),
  NA,
  tone_phonemes_to_prosody_map[tone_frame$phoneme]
)

# syllable count

tone_frame$syllable_count <- ifelse(
  is.na(tone_phonemes_to_syllable_map[tone_frame$phoneme]),
  NA,
  tone_phonemes_to_syllable_map[tone_frame$phoneme]
)

# reorder columns

tone_frame <- tone_frame[, c("speaker", "sex", "word", "phoneme", "accent", "prosody", "syllable_count", "min (Hz)", "min (ERB)", "max (Hz)", "max (ERB)", "duration (ms)", "max pitch time (ms)", "%", "p0 (Hz)", "p0 (ERB)", "p10 (Hz)", "p10 (ERB)", "p20 (Hz)", "p20 (ERB)", "p30 (Hz)", "p30 (ERB)", "p40 (Hz)", "p40 (ERB)", "p50 (Hz)", "p50 (ERB)", "p60 (Hz)", "p60 (ERB)", "p70 (Hz)", "p70 (ERB)", "p80 (Hz)", "p80 (ERB)", "p90 (Hz)", "p90 (ERB)", "p100 (Hz)", "p100 (ERB)")]
