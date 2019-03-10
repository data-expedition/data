library(tidyverse)
library(janitor)

l <- map2(str_c("data/", list.files("data")), read_csv)
l <- map(l, clean_names)
names(l) <- str_sub(list.files("data"), start = 8, end = -5)

names(l)
