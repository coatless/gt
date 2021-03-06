library(gt)
library(tidyverse)

# Create a display table where individual table cells are styled
tbl <-
  dplyr::tribble(
    ~rowname, ~value,  ~value_2,
    "1",      361.1,   260.1,
    "2",      184.3,   84.4,
    "3",      342.3,   126.3,
    "4",      234.9,   37.1,
    "1",      190.9,   832.5,
    "2",      743.3,   281.2,
    "3",      252.3,   732.5,
    "4",      344.7,   281.2
  )

# Create a display table
cell_styles_tbl <-
  gt(tbl) %>%
  tab_style(
    style = cell_text(size = px(28)),
    locations = cells_column_labels(
      columns = c(value, value_2)
    )
  ) %>%
  tab_style(
    style = list(
      cell_fill(color = "orange"),
      cell_text(color = "white")
    ),
    locations = cells_body(
      columns = c(value, value_2),
      rows = 1
    )
  )

cell_styles_tbl
