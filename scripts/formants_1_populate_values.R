# used to populate required variables for other scripts

# phonemes to vowel

phonemes_to_vowel_a <- c("a162","a163","a262","a263","a362","a363","a452","a453","a462","a463","a62","a63","a723","a743")
phonemes_to_vowel_e <- c("e162","e163","e262","e263","e362","e363","e452","e453","e462","e463","e62","e63","e723","e743")
phonemes_to_vowel_i <- c("i162","i163","i262","i263","i362","i363","i452","i453","i462","i463","i62","i63","i723","i743")
phonemes_to_vowel_o <- c("o162","o163","o262","o263","o362","o363","o452","o453","o462","o463","o62","o63","o723","o743")
phonemes_to_vowel_u <- c("u162","u163","u262","u263","u362","u363","u452","u453","u462","u463","u62","u63","u723","u743")

# phonemes to accent

phonemes_to_accent_ds <- c(
  "a162", "a163",
  "e162", "e163",
  "i162", "i163",
  "o162", "o163",
  "u162", "u163"
)
phonemes_to_accent_du <- c(
  "a262", "a263",
  "e262", "e263",
  "i262", "i263",
  "o262", "o263",
  "u262", "u263"
)
phonemes_to_accent_ks <- c(
  "a362", "a363",
  "e362", "e363",
  "i362", "i363",
  "o362", "o363",
  "u362", "u363"
)
phonemes_to_accent_ku <- c(
  "a452", "a453", "a462", "a463",
  "e452", "e453", "e462", "e463",
  "i452", "i453", "i462", "i463",
  "o452", "o453", "o462", "o463",
  "u452", "u453", "u462", "u463"
)
phonemes_to_accent_na <- c(
  "a62",  "a63",  "a723", "a743",
  "e62",  "e63",  "e723", "e743",
  "i62",  "i63",  "i723", "i743",
  "o62",  "o63",  "o723", "o743",
  "u62",  "u63",  "u723", "u743"
)

# phonemes to prosody_type

phonemes_to_prosody_type_d <- c(
  "a162","a163","a262","a263",
  "e162","e163","e262","e263",
  "i162","i163","i262","i263",
  "o162","o163","o262","o263",
  "u162","u163","u262","u263"
)
phonemes_to_prosody_type_k <- c(
  "a362","a363","a452","a453","a462","a463",
  "e362","e363","e452","e453","e462","e463",
  "i362","i363","i452","i453","i462","i463",
  "o362","o363","o452","o453","o462","o463",
  "u362","u363","u452","u453","u462","u463"
)
phonemes_to_prosody_type_na <- c(
  "a62","a63","a723","a743",
  "e62","e63","e723","e743",
  "i62","i63","i723","i743",
  "o62","o63","o723","o743",
  "u62","u63","u723","u743"
)

# create maps

formants_phonemes_to_vowel_map <- c(
  setNames(rep("a", length(phonemes_to_vowel_a)), phonemes_to_vowel_a),
  setNames(rep("e", length(phonemes_to_vowel_e)), phonemes_to_vowel_e),
  setNames(rep("i", length(phonemes_to_vowel_i)), phonemes_to_vowel_i),
  setNames(rep("o", length(phonemes_to_vowel_o)), phonemes_to_vowel_o),
  setNames(rep("u", length(phonemes_to_vowel_u)), phonemes_to_vowel_u)
)

formants_phonemes_to_accent_map <- c(
  setNames(rep("ds", length(phonemes_to_accent_ds)), phonemes_to_accent_ds),
  setNames(rep("du", length(phonemes_to_accent_du)), phonemes_to_accent_du),
  setNames(rep("ks", length(phonemes_to_accent_ks)), phonemes_to_accent_ks),
  setNames(rep("ku", length(phonemes_to_accent_ku)), phonemes_to_accent_ku),
  setNames(rep("na", length(phonemes_to_accent_na)), phonemes_to_accent_na)
)

formants_phonemes_to_prosody_type_map <- c(
  setNames(rep("d", length(phonemes_to_prosody_type_d)), phonemes_to_prosody_type_d),
  setNames(rep("k", length(phonemes_to_prosody_type_k)), phonemes_to_prosody_type_k),
  setNames(rep("na", length(phonemes_to_prosody_type_na)), phonemes_to_prosody_type_na)
)

# cleanup

rm(phonemes_to_vowel_a)
rm(phonemes_to_vowel_e)
rm(phonemes_to_vowel_i)
rm(phonemes_to_vowel_o)
rm(phonemes_to_vowel_u)
rm(phonemes_to_accent_ds)
rm(phonemes_to_accent_du)
rm(phonemes_to_accent_ks)
rm(phonemes_to_accent_ku)
rm(phonemes_to_accent_na)
rm(phonemes_to_prosody_type_d)
rm(phonemes_to_prosody_type_k)
rm(phonemes_to_prosody_type_na)