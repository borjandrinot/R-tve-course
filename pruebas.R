
library(tidyverse)
mtcars_to_plot %>% 
  distinct(name)












c("mpg" = '#a6cee3',
  "cyl" = "#1f78b4",
  "disp" = "#b2df8a",
  "hp" = "#33a02c",
  "drat" = "#fb9a99",
  "wt" = "#e31a1c",
  "qsec" = "#fdbf6f",
  "vs" = "#ff7f00",
  "am" = "#cab2d6",
  "gear" = "#6a3d9a",
  "carb" = "#ffff99")

mtcars_to_plot %>% 
  ggplot() + 
  geom_col(aes(x = name, y = value_norm, fill = name), 
           width = 1, color = "white", size = 0.2) + 
  coord_polar() + 
  facet_wrap(~car_model, ncol = 3) + 
  scale_fill_manual(values = c("mpg" = '#a6cee3',
                               "cyl" = "#1f78b4",
                               "disp" = "#b2df8a",
                               "hp" = "#33a02c",
                               "drat" = "#fb9a99",
                               "wt" = "#e31a1c",
                               "qsec" = "#fdbf6f",
                               "vs" = "#ff7f00",
                               "am" = "#cab2d6",
                               "gear" = "#6a3d9a",
                               "carb" = "#ffff99")) +
  scale_y_continuous(breaks = c(0, 0.5, 1), 
                     minor_breaks = NULL) +
  labs(title = "Un gráfico de prueba", 
       caption = "Dataset iris", 
       x = "", y = "") +
  theme_minimal() + 
  theme(legend.position = "none")


mtcars_to_plot %>% 
  ggplot() + 
  geom_col(aes(x = name, y = value_norm, fill = value_norm), 
           width = 1, color = "white", size = 0.2) + 
  coord_polar() + 
  facet_wrap(~car_model, ncol = 3) + 
  scale_fill_distiller(palette = "RdPu", direction = 1) +
  scale_y_continuous(breaks = c(0, 0.5, 1), 
                     minor_breaks = NULL) +
  labs(title = "Un gráfico de prueba", 
       caption = "Dataset iris", 
       x = "", y = "") +
  theme_minimal() + 
  theme(legend.position = "none")

colors <- c("#0d0887","#5302a3","#8b0aa5","#b83289","#db5c68","#f48849","#febd2a","#f0f921")

mtcars_to_plot %>% 
  ggplot() + 
  geom_col(aes(x = name, y = value_norm, fill = value_norm), 
           width = 1, color = "white", size = 0.2) + 
  coord_polar() + 
  facet_wrap(~car_model, ncol = 3) + 
  scale_fill_stepsn(n.breaks = length(colors), 
                    colours = rev(colors)) +
  scale_y_continuous(breaks = c(0, 0.5, 1), 
                     minor_breaks = NULL) +
  labs(title = "Un gráfico de prueba", 
       caption = "Dataset iris", 
       x = "", y = "") +
  theme_minimal() + 
  theme(legend.position = "none", 
        plot.margin=grid::unit(c(0,0,0,0), "mm")
        
        