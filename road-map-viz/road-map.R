##############################
# data science skills roadmap
# by Isaac J. Faber
##############################

library(gt)
library(tidyverse)

skills <- read.csv('skills.csv')

gt_skills <- skills %>% 
  group_by(Role) %>% 
  gt(rowname_col = "Skill") %>% 
  tab_style(
    style = list(cell_text(weight = "bold")),
    locations = cells_row_groups()
  ) %>% 
  fmt_markdown(columns = everything()) %>%
  tab_stubhead(label = "Start Here!") %>% 
  tab_header(title = "Data Science Skills Road Map",
             subtitle = "A prioritized list of core skills all data scientists should have")

gt_skills
gtsave(gt_skills,filename = '../skills_table.html')
