library(gt)

# Create a display table based on `airquality` New York Air
# Quality Measurements

airquality_tbl <-
  gt(data = airquality) %>%
  cols_move_to_start(columns = vars(Month, Day)) %>%
  cols_label(Solar.R = html("Solar<br>Radiation")) %>%
  fmt_number(
    columns = vars(Wind),
    decimals = 2) %>%
  tab_boxhead_panel(
    group = "Measurement Period",
    columns = vars(Month, Day)) %>%
  fmt_missing(columns = vars(Ozone, Solar.R, Ozone, Wind, Temp))

# Display the table in the Viewer
airquality_tbl