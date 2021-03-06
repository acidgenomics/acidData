suppressPackageStartupMessages({
    library(usethis)
    library(IRanges)
})
IRanges <- IRanges(
    c(1L, 10L, 20L),
    width = 5L,
    names = letters[seq_len(3L)]
)
mcols(IRanges) <- DataFrame(score = seq(3L))
use_data(IRanges, compress = "xz", overwrite = TRUE)
