#######  COMBO STAAR LEVEL, 6 SUBJECTS-2016-2022 PLOT  #######
######################################################

##########  THE 'TEA TWO-STEP!'  ##########
# load libraries

library(readxl)
library(writexl)
library(ggplot2)
library(tibble)
library(tidyr)
library(readr)
library(purrr)
library(dplyr)
library(stringr)
library(forcats)
library(lubridate)
library(janitor)
library(scales)
library(ggtext)
library(paletteer)
library(viridis)
library(RColorBrewer)
library(wesanderson)
library(dutchmasters)
library(gghighlight)
library(monochromeR)
library(ggforce)


###########  DS STAAR THEMING FUNCTION  ##########

ds_staar_theme <- function(base_size = 16,
                           dark_text = "#1A242F") {
  mid_text <-
    monochromeR::generate_palette(dark_text, "go_lighter", n_colours = 5)[2]
  light_text <-
    monochromeR::generate_palette(dark_text, "go_lighter", n_colours = 5)[3]
  theme_minimal(base_size = base_size) +
    theme(
      text = element_text(
        color = dark_text,
        family = "Trebuchet MS",
        lineheight = 1.3
      ),
      plot.title = ggtext::element_textbox_simple(
        family = "Trebuchet MS",
        size = rel(1.5),
        lineheight = 1.3,
        margin = margin(0, 0, .5, 0, "lines"),
        face = "bold",
        halign = 0,
        color = dark_text
      ),
      plot.subtitle = ggtext::element_textbox_simple(
        family = "Trebuchet MS",
        size = rel(0.9),
        lineheight = 1.1,
        margin = margin(0, 0, 0, 0, "lines"),
        face = "bold",
        halign = 0,
        color = dark_text
      ),
      strip.text = element_text(
        family = "Trebuchet MS",
        face = "bold",
        hjust = 0.03,
        size = rel(1.1),
        margin = margin(0, 0, 0, 0, "lines"),
        color = dark_text
      ),
      axis.text.x = element_markdown(
        color = dark_text,
        size = rel(1.4),
        margin = margin(-1, 0, 0, 0, "lines")
      ),
      axis.text.y = element_markdown(color = dark_text, size = rel(1.0)),
      axis.title.x = element_markdown(color = dark_text, size = rel(1.0)),
      axis.title.y = element_blank(),
      axis.ticks.x = element_blank(),
      axis.ticks.y = element_blank(),
      legend.position = "none",
      legend.justification = 1,
      panel.grid = element_blank(),
      plot.caption = element_text(
        size = rel(1.0),
        margin = margin(8, 0, 0, 0),
        face = "bold"
      ),
      plot.margin = margin(1.00, 0.25, 1.00, 0.25, "cm")  # this controls the margins of the overall plot, not the space between the parts
    )
}


###############  DATA WRANGLING  ###############

# read in Excel file pre-set for pivoting longer
df <-
  readxl::read_excel(
    "data/staar-wide-disagg-2016-2022.xlsx",
    sheet = 1,
    col_types = c(
      "numeric",
      "text",
      "numeric",
      "numeric",
      "numeric",
      "numeric",
      "numeric",
      "numeric",
      "numeric"
    )
  )


# Pivot the data into long format
staar_disagg_wide_to_long <-
  df %>%
  pivot_longer(cols = c(3:9),
               names_to = "rating",
               values_to = "value")



# Convert subject column to a factor for proper ordering on the x axis
staar_disagg_wide_to_long$subject <-
  factor(staar_disagg_wide_to_long$subject,
         levels = unique(staar_disagg_wide_to_long$subject))

# # Define the desired order of factors
# desired_order <- c(
#   "All Subjects",
#   "ELA/Reading",
#   "Writing",
#   "Math",
#   "Science",
#   "Social Science"
# )

# # Convert the subject column to a factor with desired order
# staar_disagg_wide_to_long$subject <- factor(staar_disagg_wide_to_long$subject, levels = desired_order)


# Filter out rows with NA values in the 'value' column

staar_disagg_wide_to_long <- staar_disagg_wide_to_long %>%
  filter(!is.na(value))



# You could cut and paste all the Snapshots available and group them by subject.  But, you still have the problem of COMBINED RATING CATEGORIES


# STAAR Level = "At Approaches Grade Level Standard OR ABOVE" by Year and Subject


# Establish range of text colors

dark_text <- "#1A242F"
mid_text <-
  monochromeR::generate_palette(dark_text, "go_lighter", n_colours = 5)[2]
light_text <-
  monochromeR::generate_palette(dark_text, "go_lighter", n_colours = 5)[3]


# Setup custom labels for TEA subjects and assign them colors in case you want to match the fill

custom_labels <-
  c(
    "**All Subjects**",
    "**ELA/Reading**",
    "**Writing**",
    "**Math**",
    "**Science**",
    "**Social Science**"
  )

label_colors <- c(
  "All Subjects" = "#94B6D2FF",
  "ELA/Reading" = "#DD8047FF",
  "Writing" = "#A5AB81FF",
  "Math" = "#D8B25CFF",
  "Science" = "#7BA79DFF",
  "Social Science" = "#968C8CFF"
)


# Establish Subject labels to appear over year bars

labels_data <- data.frame(
  x = 1:3,
  # Adjust the x positions of labels as needed
  y = rep(71, 3),
  # Adjust the y positions as needed
  label = custom_labels[1:3],
  # Select all six  labels
  label_color = label_colors[c('All Subjects',
                               'ELA/Reading',
                               'Writing',
                               'Math',
                               'Science',
                               'Social Science')]  # Map colors to labels in case you want to use that color mapping
)



# Setup data frame for placing 6 ellipses around 6 subject names above their respective bar grouping

e <- data.frame(
  x = c(1, 2, 3),  # x-coordinate of the center of the ellipse.  The units are the same as the units of the data in the plot's x and y axes.
  y = c(55, 55, 42),  # y-coordinate of the center of the ellipse.  The units are the same as the units of the data in the plot's x and y axes.
  a = c(0.5, 0.5, 0.5),  # semi-major axis length (along x when angle = 0).  The units are the same as the units of the data in the plot's x and y axes.
  b = c(10, 10, 20),  # semi-minor axis length (along y when angle = 0).  The units are the same as the units of the data in the plot's x and y axes.
  angle = c(0, 0, 0)  # rotation angle in radians (counter-clockwise)
)


# Possible alternative palette

ds_palette_scuc <- c("#9F248FFF",
                     "#FFCE4EFF",
                     "#017A4AFF",
                     "#F9791EFF",
                     "#244579FF",
                     "#C6242DFF")


# Possible alternative palette, desaturated

ds_palette_scuc_desat <- c("#7F589CFF",
                           "#D9994DFF",
                           "#00524BFF",
                           "#C54C0EFF",
                           "#192E46FF",
                           "#972019FF")


# Possible alternative palette, lightened

ds_palette_scuc_light <- c("#C858D6FF",
                           "#D9994DFF",
                           "#33A3E6FF",
                           "#FFB481FF",
                           "#6194C5FF",
                           "#E5454CFF")



# Build the plot

# These three functions make it so all geoms that use text, label, and label_repel will use Trebuchet MS as the font. Those layers are *not* influenced by whatever you include in the base_family argument in something like theme_minimal(), so ordinarily you'd need to specify the font in each individual annotate(geom = "text") layer or geom_label() layer, and that's tedious! This removes that tediousness.

update_geom_defaults("text", list(family = "Trebuchet MS"))
update_geom_defaults("label", list(family = "Trebuchet MS"))

# update_geom_defaults("label_repel", list(family = "Trebuchet MS"))


staar_2016_2022_by_subject_meets_or_above <-
  staar_disagg_wide_to_long %>%
  
  # Choose rating level and subjects in plot
  filter(
    rating == 'meets' &
      subject %in% c(
        'all_subj',
        'ela_reading',
        'writing'
      )
  ) %>%
  mutate(subject = as.factor(subject)) %>%
  ggplot(aes(
    x = subject,
    y = value * 100,
    fill = subject,
    label = year_end
  )) + # add year_end to create bar for each year
  theme(panel.grid.major = element_line(
    color = dark_text,
    linetype = 3,
    linewidth = 0.5
  )) +
  geom_col(position = position_dodge2(0.9)) +
  
  # Add y axis title, remove x axis title and legend title
  labs(x = "", y = "Proportion Reaching This Level", fill = "") +
  scale_color_manual(values = label_colors) +
  scale_y_continuous(
    labels = scales::percent_format(scale = 1),
    breaks = seq(0, 100, by = 5),
    minor_breaks = NULL
  ) +
  theme(
    axis.text.x = element_blank(),
    axis.text.y = element_text(hjust = 1, face = "bold"),
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    axis.ticks.x = element_blank(),
    axis.ticks.y = element_blank()
  ) +
  theme(legend.position = "none") +
  coord_cartesian(ylim = c(0, 80)) +
  ggtitle(
    "Action Taken on False Trends<br>Derails Improvement Efforts"
  ) +
  labs(subtitle = "<span style='font-size: 22px; color: firebrick;'>How Many 'Trends' or 'Signals' Do You See?</span>") +
  labs(caption = "Missing Year = No STAAR Score Available") +
  geom_hline(yintercept = 0,
             color = "orange",
             linewidth = 0.5) +
  paletteer::scale_fill_paletteer_d("ggthemes::excel_Median") +
  
  # Place the Subjects labels over the groupings of bars.  Use the labels_data data frame and geom_richtext().  Text color can be matched to fill color, but is not in this template
  
  geom_richtext(
    aes(
      x = x,
      y = y,
      label = label,
      label.size = 16,
      size = 22,
      label.color = "white",
      fontface = "bold"
    ),
    data = labels_data,
    # Use the labels_data data frame to establish 'label' variable
    inherit.aes = FALSE,
    hjust = 0.5
  ) +
  
  # Place STAAR score at the top of each bar
  geom_text(
    aes(
      label = scales::percent(value, scale = 100),
      # Format value as percentage
      vjust = case_when(value < .30 ~ 0,
                        TRUE ~ 2),
      # valign = case_when(value < .30 ~ 0,
      #                   TRUE ~ .5),
      hjust = case_when(value < .30 ~ 0,
                        TRUE ~ .5),
      # halign = case_when(value < .30 ~ 0,
      #                   TRUE ~ .5),
      color = case_when(value > .30 ~ "white",
                        TRUE ~ "white")
    ),
    position = position_dodge2(0.9),
    fontface = "bold",
    family = "Trebuchet MS",
    color = dark_text,
    size = 3  # Adjust the font size as needed
  ) +
  
  
  # Place year labels (2016-2022) over the bars with adjusted size
  geom_text(
    position = position_dodge2(0.9),
    vjust = -0.5,
    fontface = "bold",
    family = "Trebuchet MS",
    color = dark_text,
    size = 3  # Adjust the font size as needed
  ) +
  
  # Place explanatory text on plot
  
  # annotate(
  #   "text",
  #   # Specify the value/category on the x-axis
  #   x = "all-subj",
  #   
  #   # Specify the value on the y-axis
  #   y = 78,
  #   
  #   label = "(Action Taken on False Trends Derails Improvement Efforts)",
  #   size = 5,
  #   fontface = "bold",
  #   hjust = 0.0,
  #   color = "firebrick"
  # ) +
  
  
  # Add an ellipse with a specific color, size, and angle over x axis categories
  
  
  geom_ellipse(
    aes(
      x0 = x,
      y0 = y,
      a = a,
      b = b,
      angle = angle,
      label = NULL,  # Remove the label mapping for this layer
      fill = NULL,   # Remove the fill mapping for this layer
      y = NULL,      # Remove the y mapping for this layer
      x = NULL,      # Remove the x mapping for this layer
      year_end = NULL  # Remove the 'year_end' mapping
    ),
    data = e,
    color = "blue",
    fill = "lightblue",
    alpha = 0.0
  ) 


paletteer::paletteer_d("ggthemes::excel_Median")



# view the plot

staar_2016_2022_by_subject_meets_or_above  +
  ds_staar_theme() +
  theme(axis.text.x = element_blank())
