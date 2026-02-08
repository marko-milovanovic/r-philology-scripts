# used to populate required variables for tone scripts

# phonemes to accent

phonemes_to_accent_DS <- c(
  # AK 2
  "a162","e162","i162","o162","u162",
  # AK 3
  "a163","e163","i163","o163","u163",
  # PA 2
  "a62_1o","a62_1z","e62_1o","e62_1z","i62_1o","i62_1z","o62_1o","o62_1z","u62_1o","u62_1z",
  # PA 3
  "a63_1o","a63_1z","e63_1o","e63_1z","i63_1o","i63_1z","o63_1o","o63_1z","u63_1o","u63_1z"
)

phonemes_to_accent_DU <- c(
  # AK 2
  "a262","e262","i262","o262","u262",
  # AK 3
  "a263","e263","i263","o263","u263",
  # PA 2
  "a62_2o","a62_2z","e62_2o","e62_2z","i62_2o","i62_2z","o62_2o","o62_2z","u62_2o","u62_2z",
  # PA 3
  "a63_2o","a63_2z","e63_2o","e63_2z","i63_2o","i63_2z","o63_2o","o63_2z","u63_2o","u63_2z"
)

phonemes_to_accent_KS <- c(
  # AK 2
  "a362","e362","i362","o362","u362",
  # AK 3
  "a363","e363","i363","o363","u363",
  # PA 2
  "a62_3o","a62_3z","e62_3o","e62_3z","i62_3o","i62_3z","o62_3o","o62_3z","u62_3o","u62_3z",
  # PA 3
  "a63_3o","a63_3z","e63_3o","e63_3z","i63_3o","i63_3z","o63_3o","o63_3z","u63_3o","u63_3z"
)

phonemes_to_accent_KU <- c(
  # AK 2
  "a462","e462","i462","o462","u462",
  # AK 3
  "a463","e463","i463","o463","u463",
  # PA 2
  "a62_4o","a62_4z","e62_4o","e62_4z","i62_4o","i62_4z","o62_4o","o62_4z","u62_4o","u62_4z",
  # PA 3
  "a63_4o","a63_4z","e63_4o","e63_4z","i63_4o","i63_4z","o63_4o","o63_4z","u63_4o","u63_4z"
)


# phonemes to prosody

phonemes_to_prosody_AK <- c(
  # DS 2
  "a162","e162","i162","o162","u162",
  # DS 3
  "a163","e163","i163","o163","u163",
  # DU 2
  "a262","e262","i262","o262","u262",
  # DU 3
  "a263","e263","i263","o263","u263",
  # KS 2
  "a362","e362","i362","o362","u362",
  # KS 3
  "a363","e363","i363","o363","u363",
  # KU 2
  "a462","e462","i462","o462","u462",
  # KU 3
  "a463","e463","i463","o463","u463"
)

phonemes_to_prosody_PA <- c(
  # DS 2
  "a62_1o","a62_1z","e62_1o","e62_1z","i62_1o","i62_1z","o62_1o","o62_1z","u62_1o","u62_1z",
  # DS 3
  "a63_1o","a63_1z","e63_1o","e63_1z","i63_1o","i63_1z","o63_1o","o63_1z","u63_1o","u63_1z",
  # DU 2
  "a62_2o","a62_2z","e62_2o","e62_2z","i62_2o","i62_2z","o62_2o","o62_2z","u62_2o","u62_2z",
  # DU 3
  "a63_2o","a63_2z","e63_2o","e63_2z","i63_2o","i63_2z","o63_2o","o63_2z","u63_2o","u63_2z",
  # KS 2
  "a62_3o","a62_3z","e62_3o","e62_3z","i62_3o","i62_3z","o62_3o","o62_3z","u62_3o","u62_3z",
  # KS 3
  "a63_3o","a63_3z","e63_3o","e63_3z","i63_3o","i63_3z","o63_3o","o63_3z","u63_3o","u63_3z",
  # KU 2
  "a62_4o","a62_4z","e62_4o","e62_4z","i62_4o","i62_4z","o62_4o","o62_4z","u62_4o","u62_4z",
  # KU 3
  "a63_4o","a63_4z","e63_4o","e63_4z","i63_4o","i63_4z","o63_4o","o63_4z","u63_4o","u63_4z"
)


# phonemes to syllable count

phonemes_to_syllable_2 <- c(
  # DS AK
  "a162","e162","i162","o162","u162",
  # DU AK
  "a262","e262","i262","o262","u262",
  # KS AK
  "a362","e362","i362","o362","u362",
  # KU AK
  "a462","e462","i462","o462","u462",
  # DS PA
  "a62_1o","a62_1z","e62_1o","e62_1z","i62_1o","i62_1z","o62_1o","o62_1z","u62_1o","u62_1z",
  # DU PA
  "a62_2o","a62_2z","e62_2o","e62_2z","i62_2o","i62_2z","o62_2o","o62_2z","u62_2o","u62_2z",
  # KS PA
  "a62_3o","a62_3z","e62_3o","e62_3z","i62_3o","i62_3z","o62_3o","o62_3z","u62_3o","u62_3z",
  # KU PA
  "a62_4o","a62_4z","e62_4o","e62_4z","i62_4o","i62_4z","o62_4o","o62_4z","u62_4o","u62_4z"
)

phonemes_to_syllable_3 <- c(
  # DS AK
  "a163","e163","i163","o163","u163",
  # DU AK
  "a263","e263","i263","o263","u263",
  # KS AK
  "a363","e363","i363","o363","u363",
  # KS AK
  "a463","e463","i463","o463","u463",
  # DS PA
  "a63_1o","a63_1z","e63_1o","e63_1z","i63_1o","i63_1z","o63_1o","o63_1z","u63_1o","u63_1z",
  # DU PA
  "a63_2o","a63_2z","e63_2o","e63_2z","i63_2o","i63_2z","o63_2o","o63_2z","u63_2o","u63_2z",
  # KS PA
  "a63_3o","a63_3z","e63_3o","e63_3z","i63_3o","i63_3z","o63_3o","o63_3z","u63_3o","u63_3z",
  # KU PA
  "a63_4o","a63_4z","e63_4o","e63_4z","i63_4o","i63_4z","o63_4o","o63_4z","u63_4o","u63_4z"
)

# create maps

tone_phonemes_to_accent_map <- c(
  setNames(rep("DS", length(phonemes_to_accent_DS)), phonemes_to_accent_DS),
  setNames(rep("DU", length(phonemes_to_accent_DU)), phonemes_to_accent_DU),
  setNames(rep("KS", length(phonemes_to_accent_KS)), phonemes_to_accent_KS),
  setNames(rep("KU", length(phonemes_to_accent_KU)), phonemes_to_accent_KU)
)

tone_phonemes_to_prosody_map <- c(
  setNames(rep("AK", length(phonemes_to_prosody_AK)), phonemes_to_prosody_AK),
  setNames(rep("PA", length(phonemes_to_prosody_PA)), phonemes_to_prosody_PA)
)

tone_phonemes_to_syllable_map <- c(
  setNames(rep("2", length(phonemes_to_syllable_2)), phonemes_to_syllable_2),
  setNames(rep("3", length(phonemes_to_syllable_3)), phonemes_to_syllable_3)
)

# cleanup

rm(phonemes_to_accent_DS)
rm(phonemes_to_accent_DU)
rm(phonemes_to_accent_KS)
rm(phonemes_to_accent_KU)
rm(phonemes_to_prosody_AK)
rm(phonemes_to_prosody_PA)
rm(phonemes_to_syllable_2)
rm(phonemes_to_syllable_3)
